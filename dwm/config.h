/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 1;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "monospace:size=10" };
static const char dmenufont[]       = "monospace:size=10";
static const char col_gray1[]       = "#222222";
static const char col_gray2[]       = "#444444";
static const char col_gray3[]       = "#bbbbbb";
static const char col_gray4[]       = "#eeeeee";
static const char col_cyan[]        = "#005577";
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_cyan,  col_cyan  },
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "Gimp",     NULL,       NULL,       0,            1,           -1 },
	{ "Firefox",  NULL,       NULL,       1 << 8,       0,           -1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY|ShiftMask,             KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY,                       KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "kitty", NULL };

//#define PROGRAMMER_DVORAK

static const Key keys[] = {
	/* modifier                     key        function        argument */
 	{ MODKEY,               27,     spawn,          {.v = dmenucmd } }, // p
 	{ MODKEY|ShiftMask,     36,     spawn,          {.v = termcmd } }, // Return
 	{ MODKEY,               57,     togglebar,      {0} },          // b
 	{ MODKEY,               54,     focusstack,     {.i = +1 } },   // j
 	{ MODKEY,               55,     focusstack,     {.i = -1 } },   // k
 	{ MODKEY,               42,     incnmaster,     {.i = +1 } },   // i
 	{ MODKEY,               43,     incnmaster,     {.i = -1 } },   // d
 	{ MODKEY,               44,     setmfact,       {.f = -0.05} }, // h
 	{ MODKEY,               33,     setmfact,       {.f = +0.05} }, // l
 	{ MODKEY,               36,     zoom,           {0} },          // Return
 	{ MODKEY,               23,     view,           {0} },          // Tab
 	{ MODKEY|ShiftMask,     31,     killclient,     {0} },          // c
 	{ MODKEY,               45,     setlayout,      {.v = &layouts[0]} }, // t
 	{ MODKEY,               29,     setlayout,      {.v = &layouts[1]} }, // f
 	{ MODKEY,               58,     setlayout,      {.v = &layouts[2]} }, // m
 	{ MODKEY,               65,     setlayout,      {0} },          // space
 	{ MODKEY|ShiftMask,     65,     togglefloating, {0} },          // space
 	{ MODKEY,               16,     view,           {.ui = ~0 } },  // 0
 	{ MODKEY|ShiftMask,     16,     tag,            {.ui = ~0 } },  // 0
 	{ MODKEY,               25,     focusmon,       {.i = -1 } },   // comma
 	{ MODKEY,               26,     focusmon,       {.i = +1 } },   // period
 	{ MODKEY|ShiftMask,     25,     tagmon,         {.i = -1 } },   // comma
 	{ MODKEY|ShiftMask,     26,     tagmon,         {.i = +1 } },   // period
 	TAGKEYS(                14,                     0)              // 1
 	TAGKEYS(                17,                     1)              // 2
 	TAGKEYS(                13,                     2)              // 3
 	TAGKEYS(                18,                     3)              // 4
 	TAGKEYS(                12,                     4)              // 5
 	TAGKEYS(                19,                     5)              // 6
 	TAGKEYS(                11,                     6)              // 7
 	TAGKEYS(                20,                     7)              // 8
	TAGKEYS(                15,                     8)              // 9
	{ MODKEY|ShiftMask,     24,     quit,           {0} },          // q
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static const Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

