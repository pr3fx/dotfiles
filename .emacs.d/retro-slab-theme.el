;;; Theme based on the anti-zenburn-theme (v2.5.1) authored by
;;; Andrey Kotlarski <m00naticus@gmail.com> located at
;;; https://github.com/m00natic/anti-zenburn-theme

(deftheme retro-slab "Beige and retro theme.")

(let ((class '((class color) (min-colors 89)))
   ;;; Zenburn palette reversed
   ;;; colors with -x are lighter, colors with +x are darker
      (rslab-lumogreen "#39FF14")
      (rslab-blue "#0000AA")
      (azenburn-fg+1 "#000010")
      (azenburn-fg "#232333")
      (azenburn-fg-1 "#9a9aaa")
      (azenburn-bg-2 "#FFFFFF")
      (azenburn-bg-1 "#d4d4d4")
      (azenburn-bg-05 "#c7c7c7")
      (azenburn-bg "#c0c0c0")
      (azenburn-bg+05 "#b6b6b6")
      (azenburn-bg+1 "#b0b0b0")
      (azenburn-bg+2 "#a0a0a0")
      (azenburn-bg+3 "#909090")
      (azenburn-blue+2 "#134c4c")
      (azenburn-blue+1 "#235c5c")
      (azenburn-blue "#336c6c")
      (azenburn-blue-1 "#437c7c")
      (azenburn-blue-2 "#538c8c")
      (azenburn-blue-3 "#639c9c")
      (azenburn-blue-4 "#73acac")
      (azenburn-blue-5 "#83bcbc")
      (azenburn-blue-6 "#93cccc")
      (azenburn-light-blue "#205070")
      (azenburn-dark-blue "#0f2050")
      (azenburn-dark-blue-1 "#1f3060")
      (azenburn-dark-blue-2 "#2f4070")
      (azenburn-violet-5 "#d0b0d0")
      (azenburn-violet-4 "#c0a0c0")
      (azenburn-violet-3 "#b090b0")
      (azenburn-violet-2 "#a080a0")
      (azenburn-violet-1 "#907090")
      (azenburn-violet "#806080")
      (azenburn-violet+1 "#704d70")
      (azenburn-violet+2 "#603a60")
      (azenburn-violet+3 "#502750")
      (azenburn-violet+4 "#401440")
      (azenburn-bordeaux "#6c1f1c")
      (azenburn-beige+3 "#421f0c")
      (azenburn-beige+2 "#531f1c")
      (azenburn-beige+1 "#6b400c")
      (azenburn-beige "#732f2c")
      (azenburn-beige-1 "#834744")
      (azenburn-beige-2 "#935f5c")
      (azenburn-beige-3 "#a37774")
      (azenburn-beige-4 "#b38f8c")
      (azenburn-beige-5 "#c99f9f")
      (azenburn-green "#23733c"))
  (custom-theme-set-faces
   'retro-slab
   '(button ((t (:underline t))))
   `(link ((t (:foreground ,azenburn-dark-blue :underline t :weight bold))))
   `(link-visited ((t (:foreground ,azenburn-dark-blue-2 :underline t :weight normal))))

   ;;; basic coloring
   `(default ((t (:foreground ,azenburn-fg :background ,azenburn-bg))))
   `(cursor ((t (:foreground , azenburn-fg+1 :background ,"medium blue"))))
   `(line-number-current-line ((t (:foreground ,"medium blue"))))
   `(escape-glyph ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(widget-field ((t (:foreground ,azenburn-fg :background ,azenburn-bg+3))))
   `(fringe ((t (:foreground ,azenburn-fg :background ,azenburn-bg+1))))
   `(header-line ((t (:foreground ,azenburn-dark-blue
                                  :background ,azenburn-bg-1
                                  :box (:line-width -1 :style released-button)))))
   `(highlight ((t (:background ,azenburn-bg-05))))
   `(success ((t (:foreground ,azenburn-violet :weight bold))))
   `(warning ((t (:foreground ,azenburn-light-blue :weight bold))))
   `(tooltip ((t (:foreground ,azenburn-fg :background ,azenburn-bg+1))))

   ;;; compilation
   `(compilation-column-face ((t (:foreground ,azenburn-dark-blue))))
   `(compilation-enter-directory-face ((t (:foreground ,azenburn-violet))))
   `(compilation-error-face ((t (:foreground ,azenburn-blue-1 :weight bold :underline t))))
   `(compilation-face ((t (:foreground ,azenburn-fg))))
   `(compilation-info-face ((t (:foreground ,azenburn-beige))))
   `(compilation-info ((t (:foreground ,azenburn-violet+4 :underline t))))
   `(compilation-leave-directory-face ((t (:foreground ,azenburn-violet))))
   `(compilation-line-face ((t (:foreground ,azenburn-dark-blue))))
   `(compilation-line-number ((t (:foreground ,azenburn-dark-blue))))
   `(compilation-message-face ((t (:foreground ,azenburn-beige))))
   `(compilation-warning-face ((t (:foreground ,azenburn-light-blue :weight bold :underline t))))
   `(compilation-mode-line-exit ((t (:foreground ,azenburn-violet+2 :weight bold))))
   `(compilation-mode-line-fail ((t (:foreground ,azenburn-blue :weight bold))))
   `(compilation-mode-line-run ((t (:foreground ,azenburn-dark-blue :weight bold))))

   ;;; completions
   `(completions-annotations ((t (:foreground ,azenburn-fg-1))))

;;; eww
   '(eww-invalid-certificate ((t (:inherit error))))
   '(eww-valid-certificate   ((t (:inherit success))))

   ;;; grep
   `(grep-context-face ((t (:foreground ,azenburn-fg))))
   `(grep-error-face ((t (:foreground ,azenburn-blue-1 :weight bold :underline t))))
   `(grep-hit-face ((t (:foreground ,azenburn-beige))))
   `(grep-match-face ((t (:foreground ,azenburn-light-blue :weight bold))))
   `(match ((t (:background ,azenburn-bg-1 :foreground ,azenburn-light-blue :weight bold))))

;;; hi-lock
   `(hi-blue    ((t (:background ,azenburn-bordeaux    :foreground ,azenburn-bg-1))))
   `(hi-green   ((t (:background ,azenburn-violet+4 :foreground ,azenburn-bg-1))))
   `(hi-pink    ((t (:background ,azenburn-green :foreground ,azenburn-bg-1))))
   `(hi-yellow  ((t (:background ,azenburn-dark-blue  :foreground ,azenburn-bg-1))))
   `(hi-blue-b  ((t (:foreground ,azenburn-beige    :weight     bold))))
   `(hi-green-b ((t (:foreground ,azenburn-violet+2 :weight     bold))))
   `(hi-red-b   ((t (:foreground ,azenburn-blue     :weight     bold))))

;;; info
   `(Info-quoted ((t (:inherit font-lock-constant-face))))

;;; faces used by isearch
   `(isearch ((t (:foreground ,azenburn-dark-blue-2 :weight bold :background ,azenburn-bg+2))))
   `(isearch-fail ((t (:foreground ,azenburn-fg :background ,azenburn-blue-4))))
   `(lazy-highlight ((t (:foreground ,azenburn-dark-blue-2 :weight bold :background ,azenburn-bg-05))))

   `(menu ((t (:foreground ,azenburn-fg :background ,azenburn-bg))))
   `(minibuffer-prompt ((t (:foreground ,azenburn-dark-blue))))
   `(mode-line
     ((,class (:foreground ,azenburn-violet+1
                           :background ,azenburn-bg-1
                           :box (:line-width -1 :style released-button)))
      (t (:inverse-video t))))
   `(mode-line-buffer-id ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(mode-line-inactive
     ((t (:foreground ,azenburn-violet-2
                      :background ,azenburn-bg-05
                      :box (:line-width -1 :style released-button)))))
   `(region ((,class (:background ,"plum"))
             (t (:inverse-video t))))
   `(secondary-selection ((t (:background ,azenburn-bg+2))))
   `(trailing-whitespace ((t (:background ,azenburn-blue))))
   `(vertical-border ((t (:foreground ,azenburn-fg))))

   ;;; font lock
   `(font-lock-builtin-face ((t (:foreground ,azenburn-fg :weight bold))))
   `(font-lock-comment-face ((t (:foreground ,azenburn-violet))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,azenburn-violet-2))))
   `(font-lock-constant-face ((t (:foreground ,azenburn-violet+4))))
   `(font-lock-doc-face ((t (:foreground ,azenburn-violet+2))))
   `(font-lock-function-name-face ((t (:foreground ,azenburn-bordeaux))))
   `(font-lock-keyword-face ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,azenburn-beige+1))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,azenburn-violet :weight bold))))
   `(font-lock-string-face ((t (:foreground ,azenburn-blue))))
   `(font-lock-type-face ((t (:foreground ,azenburn-beige-1))))
   `(font-lock-variable-name-face ((t (:foreground ,azenburn-light-blue))))
   `(font-lock-warning-face ((t (:foreground ,azenburn-dark-blue-2 :weight bold))))

   '(c-annotation-face ((t (:inherit font-lock-constant-face))))

;;; man
   '(Man-overstrike ((t (:inherit font-lock-keyword-face))))
   '(Man-underline  ((t (:inherit (font-lock-string-face underline)))))

   ;;; newsticker
   `(newsticker-date-face ((t (:foreground ,azenburn-fg))))
   `(newsticker-default-face ((t (:foreground ,azenburn-fg))))
   `(newsticker-enclosure-face ((t (:foreground ,azenburn-violet+3))))
   `(newsticker-extra-face ((t (:foreground ,azenburn-bg+2 :height 0.8))))
   `(newsticker-feed-face ((t (:foreground ,azenburn-fg))))
   `(newsticker-immortal-item-face ((t (:foreground ,azenburn-violet))))
   `(newsticker-new-item-face ((t (:foreground ,azenburn-beige))))
   `(newsticker-obsolete-item-face ((t (:foreground ,azenburn-blue))))
   `(newsticker-old-item-face ((t (:foreground ,azenburn-bg+3))))
   `(newsticker-statistics-face ((t (:foreground ,azenburn-fg))))
   `(newsticker-treeview-face ((t (:foreground ,azenburn-fg))))
   `(newsticker-treeview-immortal-face ((t (:foreground ,azenburn-violet))))
   `(newsticker-treeview-listwindow-face ((t (:foreground ,azenburn-fg))))
   `(newsticker-treeview-new-face ((t (:foreground ,azenburn-beige :weight bold))))
   `(newsticker-treeview-obsolete-face ((t (:foreground ,azenburn-blue))))
   `(newsticker-treeview-old-face ((t (:foreground ,azenburn-bg+3))))
   `(newsticker-treeview-selection-face ((t (:background ,azenburn-bg-1 :foreground ,azenburn-dark-blue))))

;;; woman
   '(woman-bold   ((t (:inherit font-lock-keyword-face))))
   '(woman-italic ((t (:inherit (font-lock-string-face italic)))))

;;; diff
   `(diff-added        ((t (:background ,azenburn-blue-6 :foreground ,azenburn-blue+1))))
   `(diff-changed        ((t (:background "#aaaaee" :foreground ,azenburn-dark-blue-1))))
   `(diff-removed          ((t (:background ,azenburn-violet-5 :foreground ,azenburn-violet+2))))
   `(diff-refine-added ((t (:background ,azenburn-blue-5 :foreground ,azenburn-blue+2))))
   `(diff-refine-changed  ((t (:background "#7777ee" :foreground ,azenburn-dark-blue))))
   `(diff-refine-removed   ((t (:background ,azenburn-violet-4 :foreground ,azenburn-violet+3))))
   `(diff-header ((,class (:background ,azenburn-bg+2))
                  (t (:background ,azenburn-fg :foreground ,azenburn-bg))))
   `(diff-file-header
     ((,class (:background ,azenburn-bg+2 :foreground ,azenburn-fg :weight bold))
      (t (:background ,azenburn-fg :foreground ,azenburn-bg :weight bold))))

;;; diff-hl
   `(diff-hl-change ((,class (:foreground ,azenburn-beige :background ,azenburn-beige-2))))
   `(diff-hl-delete ((,class (:foreground ,azenburn-blue+1 :background ,azenburn-blue-1))))
   `(diff-hl-insert ((,class :foreground ,azenburn-violet+1 :background ,azenburn-violet-2)))

;;; dired+
   `(diredp-display-msg ((t (:foreground ,azenburn-beige))))
   `(diredp-compressed-file-suffix ((t (:foreground ,azenburn-light-blue))))
   `(diredp-date-time ((t (:foreground ,azenburn-green))))
   `(diredp-deletion ((t (:foreground ,azenburn-dark-blue))))
   `(diredp-deletion-file-name ((t (:foreground ,azenburn-blue))))
   `(diredp-dir-heading ((t (:foreground ,azenburn-beige :background ,azenburn-bg-1))))
   `(diredp-dir-priv ((t (:foreground ,azenburn-bordeaux))))
   `(diredp-exec-priv ((t (:foreground ,azenburn-blue))))
   `(diredp-executable-tag ((t (:foreground ,azenburn-violet+1))))
   `(diredp-file-name ((t (:foreground ,azenburn-beige))))
   `(diredp-file-suffix ((t (:foreground ,azenburn-violet))))
   `(diredp-flag-mark ((t (:foreground ,azenburn-dark-blue))))
   `(diredp-flag-mark-line ((t (:foreground ,azenburn-light-blue))))
   `(diredp-ignored-file-name ((t (:foreground ,azenburn-blue))))
   `(diredp-link-priv ((t (:foreground ,azenburn-dark-blue))))
   `(diredp-mode-line-flagged ((t (:foreground ,azenburn-dark-blue))))
   `(diredp-mode-line-marked ((t (:foreground ,azenburn-light-blue))))
   `(diredp-no-priv ((t (:foreground ,azenburn-fg))))
   `(diredp-number ((t (:foreground ,azenburn-violet+1))))
   `(diredp-other-priv ((t (:foreground ,azenburn-dark-blue-1))))
   `(diredp-rare-priv ((t (:foreground ,azenburn-blue-1))))
   `(diredp-read-priv ((t (:foreground ,azenburn-violet-2))))
   `(diredp-symlink ((t (:foreground ,azenburn-dark-blue))))
   `(diredp-write-priv ((t (:foreground ,azenburn-green))))

;;; dired-async
   `(dired-async-failures ((t (:foreground ,azenburn-blue :weight bold))))
   `(dired-async-message ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(dired-async-mode-message ((t (:foreground ,azenburn-dark-blue))))

;;; diredfl
   `(diredfl-compressed-file-suffix ((t (:foreground ,azenburn-light-blue))))
   `(diredfl-date-time ((t (:foreground ,azenburn-green))))
   `(diredfl-deletion ((t (:foreground ,azenburn-dark-blue))))
   `(diredfl-deletion-file-name ((t (:foreground ,azenburn-blue))))
   `(diredfl-dir-heading ((t (:foreground ,azenburn-beige :background ,azenburn-bg-1))))
   `(diredfl-dir-priv ((t (:foreground ,azenburn-bordeaux))))
   `(diredfl-exec-priv ((t (:foreground ,azenburn-blue))))
   `(diredfl-executable-tag ((t (:foreground ,azenburn-violet+1))))
   `(diredfl-file-name ((t (:foreground ,azenburn-beige))))
   `(diredfl-file-suffix ((t (:foreground ,azenburn-violet))))
   `(diredfl-flag-mark ((t (:foreground ,azenburn-dark-blue))))
   `(diredfl-flag-mark-line ((t (:foreground ,azenburn-light-blue))))
   `(diredfl-ignored-file-name ((t (:foreground ,azenburn-blue))))
   `(diredfl-link-priv ((t (:foreground ,azenburn-dark-blue))))
   `(diredfl-no-priv ((t (:foreground ,azenburn-fg))))
   `(diredfl-number ((t (:foreground ,azenburn-violet+1))))
   `(diredfl-other-priv ((t (:foreground ,azenburn-dark-blue-1))))
   `(diredfl-rare-priv ((t (:foreground ,azenburn-blue-1))))
   `(diredfl-read-priv ((t (:foreground ,azenburn-violet-1))))
   `(diredfl-symlink ((t (:foreground ,azenburn-dark-blue))))
   `(diredfl-write-priv ((t (:foreground ,azenburn-green))))

;;; ediff
   '(ediff-current-diff-A ((t (:inherit diff-removed))))
   '(ediff-current-diff-Ancestor ((t (:inherit ediff-current-diff-A))))
   '(ediff-current-diff-B ((t (:inherit diff-added))))
   `(ediff-current-diff-C ((t (:foreground ,azenburn-beige+2 :background ,azenburn-beige-5))))
   `(ediff-even-diff-A ((t (:background ,azenburn-bg+1))))
   `(ediff-even-diff-Ancestor ((t (:background ,azenburn-bg+1))))
   `(ediff-even-diff-B ((t (:background ,azenburn-bg+1))))
   `(ediff-even-diff-C ((t (:background ,azenburn-bg+1))))
   '(ediff-fine-diff-A ((t (:inherit diff-refine-removed :weight bold))))
   '(ediff-fine-diff-Ancestor ((t (:inherit ediff-fine-diff-A))))
   '(ediff-fine-diff-B ((t (:inherit diff-refine-added :weight bold))))
   `(ediff-fine-diff-C ((t (:foreground ,azenburn-beige+3 :background ,azenburn-beige-4 :weight bold ))))
   `(ediff-odd-diff-A ((t (:background ,azenburn-bg+2))))
   '(ediff-odd-diff-Ancestor ((t (:inherit ediff-odd-diff-A))))
   '(ediff-odd-diff-B ((t (:inherit ediff-odd-diff-A))))
   '(ediff-odd-diff-C ((t (:inherit ediff-odd-diff-A))))

;;; ert
   `(ert-test-result-expected ((t (:foreground ,azenburn-violet+4 :background ,azenburn-bg))))
   `(ert-test-result-unexpected ((t (:foreground ,azenburn-blue :background ,azenburn-bg))))

;;; eshell
   `(eshell-prompt ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(eshell-ls-archive ((t (:foreground ,azenburn-blue-1 :weight bold))))
   '(eshell-ls-backup ((t (:inherit font-lock-comment-face))))
   '(eshell-ls-clutter ((t (:inherit font-lock-comment-face))))
   `(eshell-ls-directory ((t (:foreground ,azenburn-beige+1 :weight bold))))
   `(eshell-ls-executable ((t (:foreground ,azenburn-blue+1 :weight bold))))
   `(eshell-ls-unreadable ((t (:foreground ,azenburn-fg))))
   '(eshell-ls-missing ((t (:inherit font-lock-warning-face))))
   '(eshell-ls-product ((t (:inherit font-lock-doc-face))))
   `(eshell-ls-special ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(eshell-ls-symlink ((t (:foreground ,azenburn-bordeaux :weight bold))))

;;; erc
   '(erc-action-face ((t (:inherit erc-default-face))))
   '(erc-bold-face ((t (:weight bold))))
   `(erc-current-nick-face ((t (:foreground ,azenburn-beige :weight bold))))
   '(erc-dangerous-host-face ((t (:inherit font-lock-warning-face))))
   `(erc-default-face ((t (:foreground ,azenburn-fg))))
   '(erc-direct-msg-face ((t (:inherit erc-default-face))))
   '(erc-error-face ((t (:inherit font-lock-warning-face))))
   '(erc-fool-face ((t (:inherit erc-default-face))))
   '(erc-highlight-face ((t (:inherit hover-highlight))))
   `(erc-input-face ((t (:foreground ,azenburn-dark-blue))))
   `(erc-keyword-face ((t (:foreground ,azenburn-beige :weight bold))))
   `(erc-nick-default-face ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(erc-my-nick-face ((t (:foreground ,azenburn-blue :weight bold))))
   '(erc-nick-msg-face ((t (:inherit erc-default-face))))
   `(erc-notice-face ((t (:foreground ,azenburn-violet))))
   `(erc-pal-face ((t (:foreground ,azenburn-light-blue :weight bold))))
   `(erc-prompt-face ((t (:foreground ,azenburn-light-blue :background ,azenburn-bg :weight bold))))
   `(erc-timestamp-face ((t (:foreground ,azenburn-violet+4))))
   '(erc-underline-face ((t (:underline t))))

;;; git-commit
   `(git-commit-comment-action  ((,class (:foreground ,azenburn-violet+1  :weight bold))))
   `(git-commit-comment-branch  ((,class (:foreground ,azenburn-beige+1   :weight bold)))) ; obsolete
   `(git-commit-comment-branch-local  ((,class (:foreground ,azenburn-beige+1  :weight bold))))
   `(git-commit-comment-branch-remote ((,class (:foreground ,azenburn-violet  :weight bold))))
   `(git-commit-comment-heading ((,class (:foreground ,azenburn-dark-blue :weight bold))))

;;; git-rebase
   `(git-rebase-hash ((t (:foreground ,azenburn-light-blue))))

;;; gnus
   '(gnus-group-mail-1 ((t (:weight bold :inherit gnus-group-mail-1-empty))))
   '(gnus-group-mail-1-empty ((t (:inherit gnus-group-news-1-empty))))
   '(gnus-group-mail-2 ((t (:weight bold :inherit gnus-group-mail-2-empty))))
   '(gnus-group-mail-2-empty ((t (:inherit gnus-group-news-2-empty))))
   '(gnus-group-mail-3 ((t (:weight bold :inherit gnus-group-mail-3-empty))))
   '(gnus-group-mail-3-empty ((t (:inherit gnus-group-news-3-empty))))
   '(gnus-group-mail-4 ((t (:weight bold :inherit gnus-group-mail-4-empty))))
   '(gnus-group-mail-4-empty ((t (:inherit gnus-group-news-4-empty))))
   '(gnus-group-mail-5 ((t (:weight bold :inherit gnus-group-mail-5-empty))))
   '(gnus-group-mail-5-empty ((t (:inherit gnus-group-news-5-empty))))
   '(gnus-group-mail-6 ((t (:weight bold :inherit gnus-group-mail-6-empty))))
   '(gnus-group-mail-6-empty ((t (:inherit gnus-group-news-6-empty))))
   '(gnus-group-mail-low ((t (:weight bold :inherit gnus-group-mail-low-empty))))
   '(gnus-group-mail-low-empty ((t (:inherit gnus-group-news-low-empty))))
   '(gnus-group-news-1 ((t (:weight bold :inherit gnus-group-news-1-empty))))
   '(gnus-group-news-2 ((t (:weight bold :inherit gnus-group-news-2-empty))))
   '(gnus-group-news-3 ((t (:weight bold :inherit gnus-group-news-3-empty))))
   '(gnus-group-news-4 ((t (:weight bold :inherit gnus-group-news-4-empty))))
   '(gnus-group-news-5 ((t (:weight bold :inherit gnus-group-news-5-empty))))
   '(gnus-group-news-6 ((t (:weight bold :inherit gnus-group-news-6-empty))))
   '(gnus-group-news-low ((t (:weight bold :inherit gnus-group-news-low-empty))))
   '(gnus-header-content ((t (:inherit message-header-other))))
   '(gnus-header-from ((t (:inherit message-header-to))))
   '(gnus-header-name ((t (:inherit message-header-name))))
   '(gnus-header-newsgroups ((t (:inherit message-header-other))))
   '(gnus-header-subject ((t (:inherit message-header-subject))))
   `(gnus-server-opened ((t (:foreground ,azenburn-violet+2 :weight bold))))
   `(gnus-server-denied ((t (:foreground ,azenburn-blue+1 :weight bold))))
   `(gnus-server-closed ((t (:foreground ,azenburn-beige :slant italic))))
   `(gnus-server-offline ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(gnus-server-agent ((t (:foreground ,azenburn-beige :weight bold))))
   `(gnus-summary-cancelled ((t (:foreground ,azenburn-light-blue))))
   `(gnus-summary-high-ancient ((t (:foreground ,azenburn-beige))))
   `(gnus-summary-high-read ((t (:foreground ,azenburn-violet :weight bold))))
   `(gnus-summary-high-ticked ((t (:foreground ,azenburn-light-blue :weight bold))))
   `(gnus-summary-high-unread ((t (:foreground ,azenburn-fg :weight bold))))
   `(gnus-summary-low-ancient ((t (:foreground ,azenburn-beige))))
   `(gnus-summary-low-read ((t (:foreground ,azenburn-violet))))
   `(gnus-summary-low-ticked ((t (:foreground ,azenburn-light-blue :weight bold))))
   `(gnus-summary-low-unread ((t (:foreground ,azenburn-fg))))
   `(gnus-summary-normal-ancient ((t (:foreground ,azenburn-beige))))
   `(gnus-summary-normal-read ((t (:foreground ,azenburn-violet))))
   `(gnus-summary-normal-ticked ((t (:foreground ,azenburn-light-blue :weight bold))))
   `(gnus-summary-normal-unread ((t (:foreground ,azenburn-fg))))
   `(gnus-summary-selected ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(gnus-cite-1 ((t (:foreground ,azenburn-beige))))
   `(gnus-cite-10 ((t (:foreground ,azenburn-dark-blue-1))))
   `(gnus-cite-11 ((t (:foreground ,azenburn-dark-blue))))
   `(gnus-cite-2 ((t (:foreground ,azenburn-beige-1))))
   `(gnus-cite-3 ((t (:foreground ,azenburn-beige-2))))
   `(gnus-cite-4 ((t (:foreground ,azenburn-violet+2))))
   `(gnus-cite-5 ((t (:foreground ,azenburn-violet+1))))
   `(gnus-cite-6 ((t (:foreground ,azenburn-violet))))
   `(gnus-cite-7 ((t (:foreground ,azenburn-blue))))
   `(gnus-cite-8 ((t (:foreground ,azenburn-blue-1))))
   `(gnus-cite-9 ((t (:foreground ,azenburn-blue-2))))
   `(gnus-group-news-1-empty ((t (:foreground ,azenburn-dark-blue))))
   `(gnus-group-news-2-empty ((t (:foreground ,azenburn-violet+3))))
   `(gnus-group-news-3-empty ((t (:foreground ,azenburn-violet+1))))
   `(gnus-group-news-4-empty ((t (:foreground ,azenburn-beige-2))))
   `(gnus-group-news-5-empty ((t (:foreground ,azenburn-beige-3))))
   `(gnus-group-news-6-empty ((t (:foreground ,azenburn-bg+2))))
   `(gnus-group-news-low-empty ((t (:foreground ,azenburn-bg+2))))
   `(gnus-signature ((t (:foreground ,azenburn-dark-blue))))
   `(gnus-x ((t (:background ,azenburn-fg :foreground ,azenburn-bg))))
   `(mm-uu-extract ((t (:background ,azenburn-bg-05 :foreground ,azenburn-violet+1))))

;;; hl-line-mode
   `(hl-line-face ((,class (:background ,azenburn-bg-05))
                   (t (:weight bold))))
   `(hl-line ((,class (:background ,azenburn-bg-05)) ; old emacsen
              (t (:weight bold))))

;;; hl-sexp
   `(hl-sexp-face ((,class (:background ,azenburn-bg+1))
                   (t (:weight bold))))

;;; info+
   `(info-command-ref-item ((t (:background ,azenburn-bg-1 :foreground ,azenburn-light-blue))))
   `(info-constant-ref-item ((t (:background ,azenburn-bg-1 :foreground ,azenburn-green))))
   `(info-double-quoted-name ((t (:inherit font-lock-comment-face))))
   `(info-file ((t (:background ,azenburn-bg-1 :foreground ,azenburn-dark-blue))))
   `(info-function-ref-item ((t (:background ,azenburn-bg-1 :inherit font-lock-function-name-face))))
   `(info-macro-ref-item ((t (:background ,azenburn-bg-1 :foreground ,azenburn-dark-blue))))
   `(info-menu ((t (:foreground ,azenburn-dark-blue))))
   `(info-quoted-name ((t (:inherit font-lock-constant-face))))
   `(info-reference-item ((t (:background ,azenburn-bg-1))))
   `(info-single-quote ((t (:inherit font-lock-keyword-face))))
   `(info-special-form-ref-item ((t (:background ,azenburn-bg-1 :foreground ,azenburn-dark-blue))))
   `(info-string ((t (:inherit font-lock-string-face))))
   `(info-syntax-class-item ((t (:background ,azenburn-bg-1 :foreground ,azenburn-beige+1))))
   `(info-user-option-ref-item ((t (:background ,azenburn-bg-1 :foreground ,azenburn-blue))))
   `(info-variable-ref-item ((t (:background ,azenburn-bg-1 :foreground ,azenburn-light-blue))))

;;; ido-mode
   `(ido-first-match ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(ido-only-match ((t (:foreground ,azenburn-light-blue :weight bold))))
   `(ido-subdir ((t (:foreground ,azenburn-dark-blue))))
   `(ido-indicator ((t (:foreground ,azenburn-dark-blue :background ,azenburn-blue-4))))

;;; ruler-mode
   `(ruler-mode-column-number ((t (:inherit 'ruler-mode-default :foreground ,azenburn-fg))))
   `(ruler-mode-fill-column ((t (:inherit 'ruler-mode-default :foreground ,azenburn-dark-blue))))
   `(ruler-mode-goal-column ((t (:inherit 'ruler-mode-fill-column))))
   `(ruler-mode-comment-column ((t (:inherit 'ruler-mode-fill-column))))
   `(ruler-mode-tab-stop ((t (:inherit 'ruler-mode-fill-column))))
   `(ruler-mode-current-column ((t (:foreground ,azenburn-dark-blue :box t))))
   `(ruler-mode-default ((t (:foreground ,azenburn-violet+2 :background ,azenburn-bg))))

;;; magit
;;; headings and diffs
   `(magit-section-highlight           ((t (:background ,azenburn-bg+05))))
   `(magit-section-heading             ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(magit-section-heading-selection   ((t (:foreground ,azenburn-light-blue :weight bold))))

   '(magit-diff-added ((t (:inherit diff-added))))
   '(magit-diff-added-highlight ((t (:inherit diff-refine-added))))
   '(magit-diff-removed ((t (:inherit diff-removed))))
   '(magit-diff-removed-highlight ((t (:inherit diff-refine-removed))))

   '(magit-diff-file-heading           ((t (:weight bold))))
   `(magit-diff-file-heading-highlight ((t (:background ,azenburn-bg+05  :weight bold))))
   `(magit-diff-file-heading-selection ((t (:background ,azenburn-bg+05
                                                        :foreground ,azenburn-light-blue :weight bold))))
   `(magit-diff-hunk-heading           ((t (:background ,azenburn-bg+1))))
   `(magit-diff-hunk-heading-highlight ((t (:background ,azenburn-bg+2))))
   `(magit-diff-hunk-heading-selection ((t (:background ,azenburn-bg+2
                                                        :foreground ,azenburn-light-blue))))
   `(magit-diff-lines-heading          ((t (:background ,azenburn-light-blue
                                                        :foreground ,azenburn-bg+2))))
   `(magit-diff-context-highlight      ((t (:background ,azenburn-bg+05
                                                        :foreground ,azenburn-bg+3))))
   `(magit-diffstat-added   ((t (:foreground ,azenburn-violet+4))))
   `(magit-diffstat-removed ((t (:foreground ,azenburn-blue))))
;;; popup
   `(magit-popup-heading             ((t (:foreground ,azenburn-dark-blue  :weight bold))))
   `(magit-popup-key                 ((t (:foreground ,azenburn-violet-2 :weight bold))))
   `(magit-popup-argument            ((t (:foreground ,azenburn-violet   :weight bold))))
   `(magit-popup-disabled-argument   ((t (:foreground ,azenburn-fg-1    :weight normal))))
   `(magit-popup-option-value        ((t (:foreground ,azenburn-beige-2  :weight bold))))
;;; process
   `(magit-process-ok    ((t (:foreground ,azenburn-violet  :weight bold))))
   `(magit-process-ng    ((t (:foreground ,azenburn-blue    :weight bold))))
;;; log
   `(magit-log-author    ((t (:foreground ,azenburn-light-blue))))
   `(magit-log-date      ((t (:foreground ,azenburn-fg-1))))
   `(magit-log-graph     ((t (:foreground ,azenburn-fg+1))))
;;; sequence
   `(magit-sequence-pick ((t (:foreground ,azenburn-dark-blue-2))))
   `(magit-sequence-stop ((t (:foreground ,azenburn-violet))))
   `(magit-sequence-part ((t (:foreground ,azenburn-dark-blue))))
   `(magit-sequence-head ((t (:foreground ,azenburn-beige))))
   `(magit-sequence-drop ((t (:foreground ,azenburn-blue))))
   `(magit-sequence-done ((t (:foreground ,azenburn-fg-1))))
   `(magit-sequence-onto ((t (:foreground ,azenburn-fg-1))))
;;; bisect
   `(magit-bisect-good ((t (:foreground ,azenburn-violet))))
   `(magit-bisect-skip ((t (:foreground ,azenburn-dark-blue))))
   `(magit-bisect-bad  ((t (:foreground ,azenburn-blue))))
;;; blame
   `(magit-blame-heading ((t (:background ,azenburn-bg-1 :foreground ,azenburn-beige-2))))
   `(magit-blame-hash    ((t (:background ,azenburn-bg-1 :foreground ,azenburn-beige-2))))
   `(magit-blame-name    ((t (:background ,azenburn-bg-1 :foreground ,azenburn-light-blue))))
   `(magit-blame-date    ((t (:background ,azenburn-bg-1 :foreground ,azenburn-light-blue))))
   `(magit-blame-summary ((t (:background ,azenburn-bg-1 :foreground ,azenburn-beige-2
                                          :weight bold))))
;;; references etc
   `(magit-dimmed         ((t (:foreground ,azenburn-bg+3))))
   `(magit-hash           ((t (:foreground ,azenburn-bg+3))))
   `(magit-tag            ((t (:foreground ,azenburn-light-blue :weight bold))))
   `(magit-branch-remote  ((t (:foreground ,azenburn-violet  :weight bold))))
   `(magit-branch-local   ((t (:foreground ,azenburn-beige   :weight bold))))
   `(magit-branch-current ((t (:foreground ,azenburn-beige   :weight bold :box t))))
   `(magit-head           ((t (:foreground ,azenburn-beige   :weight bold))))
   `(magit-refname        ((t (:background ,azenburn-bg+2 :foreground ,azenburn-fg :weight bold))))
   `(magit-refname-stash  ((t (:background ,azenburn-bg+2 :foreground ,azenburn-fg :weight bold))))
   `(magit-refname-wip    ((t (:background ,azenburn-bg+2 :foreground ,azenburn-fg :weight bold))))
   `(magit-signature-good      ((t (:foreground ,azenburn-violet))))
   `(magit-signature-bad       ((t (:foreground ,azenburn-blue))))
   `(magit-signature-untrusted ((t (:foreground ,azenburn-dark-blue))))
   `(magit-signature-expired   ((t (:foreground ,azenburn-light-blue))))
   `(magit-signature-revoked   ((t (:foreground ,azenburn-green))))
   '(magit-signature-error     ((t (:inherit    magit-signature-bad))))
   `(magit-cherry-unmatched    ((t (:foreground ,azenburn-bordeaux))))
   `(magit-cherry-equivalent   ((t (:foreground ,azenburn-green))))
   `(magit-reflog-commit       ((t (:foreground ,azenburn-violet))))
   `(magit-reflog-amend        ((t (:foreground ,azenburn-green))))
   `(magit-reflog-merge        ((t (:foreground ,azenburn-violet))))
   `(magit-reflog-checkout     ((t (:foreground ,azenburn-beige))))
   `(magit-reflog-reset        ((t (:foreground ,azenburn-blue))))
   `(magit-reflog-rebase       ((t (:foreground ,azenburn-green))))
   `(magit-reflog-cherry-pick  ((t (:foreground ,azenburn-violet))))
   `(magit-reflog-remote       ((t (:foreground ,azenburn-bordeaux))))
   `(magit-reflog-other        ((t (:foreground ,azenburn-bordeaux))))

;;; message-mode
   '(message-cited-text ((t (:inherit font-lock-comment-face))))
   `(message-header-name ((t (:foreground ,azenburn-violet+1))))
   `(message-header-other ((t (:foreground ,azenburn-violet))))
   `(message-header-to ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(message-header-cc ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(message-header-newsgroups ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(message-header-subject ((t (:foreground ,azenburn-light-blue :weight bold))))
   `(message-header-xheader ((t (:foreground ,azenburn-violet))))
   `(message-mml ((t (:foreground ,azenburn-dark-blue :weight bold))))
   '(message-separator ((t (:inherit font-lock-comment-face))))

;;; org-mode
   `(org-agenda-date-today
     ((t (:foreground ,azenburn-fg+1 :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((t (:inherit font-lock-comment-face))))
   `(org-archived ((t (:foreground ,azenburn-fg :weight bold))))
   `(org-checkbox ((t (:background ,azenburn-bg+2 :foreground ,azenburn-fg+1
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((t (:foreground ,azenburn-beige :underline t))))
   `(org-deadline-announce ((t (:foreground ,azenburn-blue-1))))
   `(org-done ((t (:weight bold :weight bold :foreground ,azenburn-violet+3))))
   `(org-formula ((t (:foreground ,azenburn-dark-blue-2))))
   `(org-headline-done ((t (:foreground ,azenburn-violet+3))))
   `(org-hide ((t (:foreground ,azenburn-bg-1))))
   `(org-level-1 ((t (:foreground ,azenburn-light-blue))))
   `(org-level-2 ((t (:foreground ,azenburn-violet+4))))
   `(org-level-3 ((t (:foreground ,azenburn-beige-1))))
   `(org-level-4 ((t (:foreground ,azenburn-dark-blue-2))))
   `(org-level-5 ((t (:foreground ,azenburn-bordeaux))))
   `(org-level-6 ((t (:foreground ,azenburn-violet+2))))
   `(org-level-7 ((t (:foreground ,azenburn-blue-4))))
   `(org-level-8 ((t (:foreground ,azenburn-beige-4))))
   `(org-link ((t (:foreground ,azenburn-dark-blue-2 :underline t))))
   `(org-scheduled ((t (:foreground ,azenburn-violet+4))))
   `(org-scheduled-previously ((t (:foreground ,azenburn-blue))))
   `(org-scheduled-today ((t (:foreground ,azenburn-beige+1))))
   `(org-special-keyword ((t (:inherit font-lock-comment-face))))
   `(org-sexp-date ((t (:foreground ,azenburn-beige+1 :underline t))))
   `(org-table ((t (:foreground ,azenburn-violet+2))))
   `(org-tag ((t (:weight bold :weight bold))))
   `(org-time-grid ((t (:foreground ,azenburn-light-blue))))
   `(org-todo ((t (:weight bold :foreground ,azenburn-blue :weight bold))))
   `(org-upcoming-deadline ((t (:inherit font-lock-keyword-face))))
   `(org-warning ((t (:weight bold :foreground ,azenburn-blue :weight bold :underline nil))))
   `(org-column ((t (:background ,azenburn-bg-1))))
   `(org-column-title ((t (:background ,azenburn-bg-1 :underline t :weight bold))))
   `(org-mode-line-clock ((t (:foreground ,azenburn-fg :background ,azenburn-bg-1))))
   `(org-mode-line-clock-overrun ((t (:foreground ,azenburn-bg :background ,azenburn-blue-1))))
   `(org-ellipsis ((t (:foreground ,azenburn-dark-blue-1 :underline t))))
   `(org-footnote ((t (:foreground ,azenburn-bordeaux :underline t))))
   `(org-document-title ((t (:foreground ,azenburn-beige))))
   `(org-document-info ((t (:foreground ,azenburn-beige))))
   `(org-habit-ready-face ((t :background ,azenburn-violet)))
   `(org-habit-alert-face ((t :background ,azenburn-dark-blue-1 :foreground ,azenburn-bg)))
   `(org-habit-clear-face ((t :background ,azenburn-beige-3)))
   `(org-habit-overdue-face ((t :background ,azenburn-blue-3)))
   `(org-habit-clear-future-face ((t :background ,azenburn-beige-4)))
   `(org-habit-ready-future-face ((t :background ,azenburn-violet-2)))
   `(org-habit-alert-future-face ((t :background ,azenburn-dark-blue-2 :foreground ,azenburn-bg)))
   `(org-habit-overdue-future-face ((t :background ,azenburn-blue-4)))

;;; outline
   `(outline-1 ((t (:foreground ,azenburn-light-blue))))
   `(outline-2 ((t (:foreground ,azenburn-violet+4))))
   `(outline-3 ((t (:foreground ,azenburn-beige-1))))
   `(outline-4 ((t (:foreground ,azenburn-dark-blue-2))))
   `(outline-5 ((t (:foreground ,azenburn-bordeaux))))
   `(outline-6 ((t (:foreground ,azenburn-violet+2))))
   `(outline-7 ((t (:foreground ,azenburn-blue-4))))
   `(outline-8 ((t (:foreground ,azenburn-beige-4))))

;;; c/perl
   `(cperl-nonoverridable-face ((t (:foreground ,azenburn-green))))
   `(cperl-array-face ((t (:foreground ,azenburn-dark-blue, :backgorund ,azenburn-bg))))
   `(cperl-hash-face ((t (:foreground ,azenburn-dark-blue-1, :background ,azenburn-bg))))

;;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,azenburn-fg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,azenburn-violet+4))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,azenburn-dark-blue-2))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,azenburn-bordeaux))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,azenburn-violet+2))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,azenburn-beige+1))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,azenburn-dark-blue-1))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,azenburn-violet+1))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,azenburn-beige-2))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,azenburn-light-blue))))
   `(rainbow-delimiters-depth-11-face ((t (:foreground ,azenburn-violet))))
   `(rainbow-delimiters-depth-12-face ((t (:foreground ,azenburn-beige-5))))

   ;;rcirc
   `(rcirc-my-nick ((t (:foreground ,azenburn-beige))))
   `(rcirc-other-nick ((t (:foreground ,azenburn-light-blue))))
   `(rcirc-bright-nick ((t (:foreground ,azenburn-beige+1))))
   `(rcirc-dim-nick ((t (:foreground ,azenburn-beige-2))))
   `(rcirc-server ((t (:foreground ,azenburn-violet))))
   `(rcirc-server-prefix ((t (:foreground ,azenburn-violet+1))))
   `(rcirc-timestamp ((t (:foreground ,azenburn-violet+2))))
   `(rcirc-nick-in-message ((t (:foreground ,azenburn-dark-blue))))
   '(rcirc-nick-in-message-full-line ((t (:weight bold))))
   `(rcirc-prompt ((t (:foreground ,azenburn-dark-blue :weight bold))))
   '(rcirc-track-nick ((t (:inverse-video t))))
   '(rcirc-track-keyword ((t (:weight bold))))
   '(rcirc-url ((t (:weight bold))))
   `(rcirc-keyword ((t (:foreground ,azenburn-dark-blue :weight bold))))

;;; re-builder
   `(reb-match-0 ((t (:foreground ,azenburn-bg :background ,azenburn-green))))
   `(reb-match-1 ((t (:foreground ,azenburn-bg :background ,azenburn-beige))))
   `(reb-match-2 ((t (:foreground ,azenburn-bg :background ,azenburn-light-blue))))
   `(reb-match-3 ((t (:foreground ,azenburn-bg :background ,azenburn-blue))))

;;; realgud
   `(realgud-overlay-arrow1 ((t (:foreground ,azenburn-violet))))
   `(realgud-overlay-arrow2 ((t (:foreground ,azenburn-dark-blue))))
   `(realgud-overlay-arrow3 ((t (:foreground ,azenburn-light-blue))))
   `(realgud-bp-enabled-face ((t (:inherit error))))
   `(realgud-bp-disabled-face ((t (:inherit secondary-selection))))
   `(realgud-bp-line-enabled-face ((t (:box (:color ,azenburn-blue :style nil)))))
   `(realgud-bp-line-disabled-face ((t (:box (:color "grey70" :style nil)))))
   `(realgud-line-number ((t (:foreground ,azenburn-dark-blue))))
   `(realgud-backtrace-number ((t (:foreground ,azenburn-dark-blue, :weight bold))))

;;; rst-mode
   `(rst-level-1-face ((t (:foreground ,azenburn-light-blue))))
   `(rst-level-2-face ((t (:foreground ,azenburn-violet+1))))
   `(rst-level-3-face ((t (:foreground ,azenburn-beige-1))))
   `(rst-level-4-face ((t (:foreground ,azenburn-dark-blue-2))))
   `(rst-level-5-face ((t (:foreground ,azenburn-bordeaux))))
   `(rst-level-6-face ((t (:foreground ,azenburn-violet-2))))

;;; sh-mode
   `(sh-heredoc     ((t (:foreground ,azenburn-dark-blue :weight bold))))
   `(sh-quoted-exec ((t (:foreground ,azenburn-blue))))

;;; show-paren
   `(show-paren-mismatch ((t (:foreground ,"white" :background ,"firebrick1" :weight bold))))
   `(show-paren-match ((t (:background ,"medium spring green" :weight bold))))

;;; speedbar
   `(speedbar-button-face ((t (:foreground ,azenburn-violet+2))))
   `(speedbar-directory-face ((t (:foreground ,azenburn-bordeaux))))
   `(speedbar-file-face ((t (:foreground ,azenburn-fg))))
   `(speedbar-highlight-face ((t (:foreground ,azenburn-bg :background ,azenburn-violet+2))))
   `(speedbar-selected-face ((t (:foreground ,azenburn-blue))))
   `(speedbar-separator-face ((t (:foreground ,azenburn-bg :background ,azenburn-beige-1))))
   `(speedbar-tag-face ((t (:foreground ,azenburn-dark-blue))))

;;; term
   `(term-color-black ((t (:foreground ,azenburn-bg
                                       :background ,azenburn-bg-1))))
   `(term-color-red ((t (:foreground ,azenburn-blue-2
                                     :background ,azenburn-blue-4))))
   `(term-color-green ((t (:foreground ,azenburn-violet
                                       :background ,azenburn-violet+2))))
   `(term-color-yellow ((t (:foreground ,azenburn-light-blue
                                        :background ,azenburn-dark-blue))))
   `(term-color-blue ((t (:foreground ,azenburn-beige-1
                                      :background ,azenburn-beige-4))))
   `(term-color-magenta ((t (:foreground ,azenburn-green
                                         :background ,azenburn-blue))))
   `(term-color-cyan ((t (:foreground ,azenburn-bordeaux
                                      :background ,azenburn-beige))))
   `(term-color-white ((t (:foreground ,azenburn-fg
                                       :background ,azenburn-fg-1))))
   '(term-default-fg-color ((t (:inherit term-color-white))))
   '(term-default-bg-color ((t (:inherit term-color-black))))

;;; whitespace-mode
   `(whitespace-space ((t (:background ,azenburn-bg+1 :foreground ,azenburn-bg+1))))
   `(whitespace-hspace ((t (:background ,azenburn-bg+1 :foreground ,azenburn-bg+1))))
   `(whitespace-tab ((t (:background ,azenburn-blue-1))))
   `(whitespace-newline ((t (:foreground ,azenburn-bg+1))))
   `(whitespace-trailing ((t (:background ,azenburn-blue))))
   `(whitespace-line ((t (:background ,azenburn-bg :foreground ,azenburn-green))))
   `(whitespace-space-before-tab ((t (:background ,azenburn-light-blue :foreground ,azenburn-light-blue))))
   `(whitespace-indentation ((t (:background ,azenburn-dark-blue :foreground ,azenburn-blue))))
   `(whitespace-empty ((t (:background ,azenburn-dark-blue))))
   `(whitespace-space-after-tab ((t (:background ,azenburn-dark-blue :foreground ,azenburn-blue))))

;;; which-func-mode
   `(which-func ((t (:foreground ,azenburn-violet+4))))

  ;;; custom theme variables
  (custom-theme-set-variables
   'retro-slab
   `(ansi-color-names-vector [,azenburn-bg ,azenburn-blue ,azenburn-violet
                                           ,azenburn-dark-blue ,azenburn-beige
                                           ,azenburn-green ,azenburn-bordeaux
                                           ,azenburn-fg])
;;; fill-column-indicator
   `(fci-rule-color ,azenburn-bg-05)

;;; vc-annotate
   `(vc-annotate-color-map
     '(( 20. . ,azenburn-blue-1)
       ( 40. . ,azenburn-blue)
       ( 60. . ,azenburn-light-blue)
       ( 80. . ,azenburn-dark-blue-2)
       (100. . ,azenburn-dark-blue-1)
       (120. . ,azenburn-dark-blue)
       (140. . ,azenburn-violet-2)
       (160. . ,azenburn-violet)
       (180. . ,azenburn-violet+1)
       (200. . ,azenburn-violet+2)
       (220. . ,azenburn-violet+3)
       (240. . ,azenburn-violet+4)
       (260. . ,azenburn-bordeaux)
       (280. . ,azenburn-beige-2)
       (300. . ,azenburn-beige-1)
       (320. . ,azenburn-beige)
       (340. . ,azenburn-beige+1)
       (360. . ,azenburn-green)))
   `(vc-annotate-very-old-color ,azenburn-green)
   `(vc-annotate-background ,azenburn-bg-1)))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'retro-slab)

;;; retro-slab-theme.el ends here
