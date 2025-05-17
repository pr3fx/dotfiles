;; Store custom-set-variables in a separate file
(setq custom-file "~/.emacs.d/emacs_custom.el")

;; Disable some GUI stuff
(setq inhibit-startup-message t)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(tooltip-mode 0)

;; Set font
(set-face-attribute 'default nil
                    :family "Iosevka"
                    :height 102
                    :weight 'normal
                    :width 'normal)

;; Inline code completion
;;(global-completion-preview-mode)

;; Disable annoying bell
(setq ring-bell-function 'ignore)
;; Disable the scroll bars when splitting screen
(add-to-list 'default-frame-alist
	         '(vertical-scroll-bars . nil))

;; disable cursor blinking
(setq blink-cursor-mode nil)

;; disable line wrapping
(setq-default truncate-lines t)
(setq-default truncate-partial-width-windows nil)

;; Set tab width to 4
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq c-default-style "linux") 
(setq c-basic-offset 4) 
(c-set-offset 'comment-intro 0)

;; Always follow symlinks
(setq vc-follow-symlinks t)

;; set IDO mode
(ido-mode 1)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)

;; KEY REMAPS
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

;; Editory theme
(load-theme 'retro-slab t)

;; Don't freeze emacs with ctrl-z
(global-unset-key (kbd "C-z"))

;; Don't create backup files
(setq backup-inhibited t)
(setq auto-save-default nil)

;; view column number of cursor position
(setq column-number-mode t)

;; Line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)
(dolist (mode '(org-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0)))) ;; Disable line numbers in some buffers

;; tree-sitter
(setq treesit-language-source-alist
      '((c "https://github.com/tree-sitter/tree-sitter-c")
        (cpp "https://github.com/tree-sitter/tree-sitter-cpp")
        (cmake "https://github.com/uyha/tree-sitter-cmake")
        (elisp "https://github.com/Wilfred/tree-sitter-elisp")
        (python "https://github.com/tree-sitter/tree-sitter-python")
        (json "https://github.com/tree-sitter/tree-sitter-json")))

;; mask major modes to use treesitter instead
(add-to-list 'major-mode-remap-alist '(c-mode . c-ts-mode))
(add-to-list 'major-mode-remap-alist '(c++-mode . c++-ts-mode))
(add-to-list 'major-mode-remap-alist
             '(c-or-c++-mode . c-or-c++-ts-mode))

(add-hook 'c-ts-mode-hook (lambda ()
                            (setq-default c-ts-mode-indent-offset 4)
                            (c-ts-mode-set-global-style 'k&r)))

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
;; Install the diminish package to not show the modes for each active package on the modeline
(use-package diminish)

;; For managing git repositories
(use-package magit
  ;;:custom 
  ;;(magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1) ; Don't open new window when viewing diff
  )

;; Show available key-chords
(use-package which-key
  :init (which-key-mode) ; init: runs before the package is loaded
  :diminish which-key-mode
  :config ; config: runs after the package is loaded
  (setq which-key-idle-delay 0.5))

;; Org-mode
(use-package org)

;; Load the custom-set-variables file
(load-file custom-file)
