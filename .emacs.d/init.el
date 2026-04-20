;; Store custom-set-variables in a separate file
(setq custom-file "~/.emacs.d/emacs_custom.el")

;; ------------------
;; Setup use-package
;; ------------------
;; Package management
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t) ;; If not installed, install them automatically

;; ------------------
;; GUI configurations
;; ------------------
(setq inhibit-startup-message t)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(tooltip-mode 0)
(setq column-number-mode t) ;; view column number of cursor position
(show-paren-mode 1) ;; highlight matching parenthesis

;; Set font
(set-face-attribute 'default nil
                    :family "Iosevka"
                    :height 102
                    :weight 'normal
                    :width 'normal)

;; Disable the scroll bars when splitting screen
(add-to-list 'default-frame-alist
             '(vertical-scroll-bars . nil))


;; disable cursor blinking
(setq blink-cursor-mode nil)

;; disable line wrapping
(setq-default truncate-lines t)
(setq-default truncate-partial-width-windows nil)

;; Line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)
(dolist (mode '(org-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0)))) ;; Disable line numbers in some buffers

;; Set theme
(use-package tokyo-night
  :config (load-theme 'tokyo-night-moon t))
(use-package nord-theme)
  ;:config (load-theme 'nord t))

;; ------------------
;; Behaviour
;; ------------------
(setq ring-bell-function 'ignore) ;; Disable annoying bell

;; Set tab width to 4
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq c-default-style "linux")
(setq c-basic-offset 4)
(c-set-offset 'comment-intro 0)

;; Set garbage collector to only collect every 50Mb
;;(setq gc-cons-threshold 50000000)

;; Always follow symlinks
(setq vc-follow-symlinks t)

;; Don't freeze emacs with ctrl-z
(global-unset-key (kbd "C-z"))

;; Trim trailing whitespace when saving a file
(add-hook 'before-save-hook
          (lambda ()
            (delete-trailing-whitespace)))

;; Auto-reload changed buffers (eg. via git commands)
;; Ensures the latest file is being edited
(global-auto-revert-mode 1)
(add-hook 'dired-mode-hook 'auto-revert-mode)

;; Don't create backup files
(setq backup-inhibited t)
(setq auto-save-default nil)

;; set IDO mode
(ido-mode 1)
(setq ido-everywhere t)
(use-package ido-completing-read+
  :config (ido-ubiquitous-mode 1))

;; tramp
(setq tramp-auto-save-directory "/tmp")

;; ------------------
;; Key Remaps
;; ------------------
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-i") 'imenu)
(global-set-key (kbd "C-v") ;; keep cursor centred when scrolling up
                (lambda ()
                  (interactive)
                  (scroll-up-command)
                  (recenter)))
(global-set-key (kbd "M-v") ;; keep cursor centred when scrolling down
                (lambda ()
                  (interactive)
                  (scroll-down-command)
                  (recenter)))

;; ------------------
;; Dired
;; ------------------
(require 'dired-x)
(setq dired-listing-switches "-alh") ;; human-readable file sizes
(setq dired-recursive-copies 'top)   ;; allow recursive copies (ask)
(setq dired-recursive-deletes 'top)  ;; allow recursive deletes (ask)

;; ------------------
;; Tree Sitter
;; ------------------
(setq treesit-language-source-alist
      '((c "https://github.com/tree-sitter/tree-sitter-c")
        (cpp "https://github.com/tree-sitter/tree-sitter-cpp")
        (cmake "https://github.com/uyha/tree-sitter-cmake")
        (elisp "https://github.com/Wilfred/tree-sitter-elisp")
        (python "https://github.com/tree-sitter/tree-sitter-python")
        (go "https://github.com/tree-sitter/tree-sitter-go")
        (gomod "https://github.com/camdencheek/tree-sitter-go-mod")
        (json "https://github.com/tree-sitter/tree-sitter-json")
        (tsx . ("https://github.com/tree-sitter/tree-sitter-typescript" "v0.20.3" "tsx/src"))
        (typescript . ("https://github.com/tree-sitter/tree-sitter-typescript" "v0.20.3" "typescript/src"))
        (yaml . ("https://github.com/ikatyang/tree-sitter-yaml" "v0.5.0"))
        (prisma "https://github.com/victorhqc/tree-sitter-prisma")))

;; mask major modes to use treesitter instead
(add-to-list 'major-mode-remap-alist '(c-mode . c-ts-mode))
(add-to-list 'major-mode-remap-alist '(c++-mode . c++-ts-mode))
(add-to-list 'major-mode-remap-alist
             '(c-or-c++-mode . c-or-c++-ts-mode))
;; C and CPP
(add-to-list 'auto-mode-alist '("\\.c\\'" . c-ts-mode))
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c-ts-mode))
;; JSON and Typescript
(add-to-list 'major-mode-remap-alist '(js-json-mode . json-ts-mode))
(add-to-list 'major-mode-remap-alist '(json-mode . json-ts-mode))
(add-to-list 'major-mode-remap-alist '(typescript-mode . typescript-ts-mode))
(add-to-list 'major-mode-remap-alist '(js-mode . typescript-ts-mode))
(add-to-list 'major-mode-remap-alist '(js2-mode . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . tsx-ts-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.cjs\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.mts\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.prisma\\'" . prisma-ts-mode))
;; Golang
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-ts-mode))
(add-to-list 'auto-mode-alist '("/go\\.mod\\'" . go-mod-ts-mode))
(setq go-ts-mode-indent-offset 4)

(add-hook 'c-ts-mode-hook (lambda ()
                            (setq-default c-ts-mode-indent-offset 4)
                            (c-ts-mode-set-global-style 'k&r)))

;; ----------------------
;; Package Configuration
;; ----------------------
;; Install the diminish package to not show the modes for each active package on the modeline
;; Required before whitespace package configuration
(use-package diminish)

;; For displaying a face where there is whitespace (tabs, spaces, trailing whitespace etc.)
(use-package whitespace
  :ensure
  :defer 0.7
  :diminish (global-whitespace-mode . "") ;; " $"
  :custom
  (whitespace-line-column 210) ;; limit line length
  (whitespace-style
   '(face tabs spaces space-mark tab-mark
          trailing lines space-before-tab newline indentation empty space-after-tab))
  (whitespace-global-modes '(prog-mode))
  ;;:hook (prog-mode . whitespace-mode) ;; this caused problems in sql-mode (dunno why), global mode + list of modes to enable works better
  :config
  (global-whitespace-mode)
  :custom-face
  (whitespace-space ((t (:foreground "#3B4252" :background nil))))
  (whitespace-indentation ((t (:foreground "#3B4252" :background nil))))
  (whitespace-tab ((t (:foreground "#3B4252" :background nil))))
  (whitespace-trailing ((t (:foreground "#EBCB8B" :background "#BF616A"))))
  (whitespace-space-after-tab ((t (:foreground "#EBCB8B" :background "#D08770"))))
  (whitespace-space-before-tab ((t (:foreground "#EBCB8B" :background "#D08770"))))
  )

;; ------------------
;; External Packages
;; ------------------
;; The greatest git interface ever built
(use-package magit
  ;;:custom
  ;;(magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1) ; Don't open new window when viewing diff
  )

;; Project management
(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map)))

;; Beacon to never lose the cursor again
(use-package beacon
  :config
  (setq beacon-color "#00e57a")
  (setq beacon-size 50)
  (setq beacon-blink-duration 0.2)
  (setq beacon-blink-delay 0.2)
  (beacon-mode 1))

;; Show available key-chords
(use-package which-key
  :init (which-key-mode) ; init: runs before the package is loaded
  :diminish which-key-mode
  :config ; config: runs after the package is loaded
  (setq which-key-idle-delay 0.5))

;; M-x enhancement built on top of IDO (M-x completion and autocomplete)
(use-package smex
  :config (smex-initialize)
  :bind (("M-x" . smex)
		 ("M-X" . smex-major-mode-commands)
		 ("C-c C-c M-x" . execute-extended-command)))

;; Org-mode
(use-package org)

(add-to-list 'load-path "/home/operator/extern_repos/vui/")
(require 'vui)

;; Load the custom-set-variables file
(load-file custom-file)
