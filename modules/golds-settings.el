;; Disable annoying modes
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(delete-selection-mode 1)
(global-display-line-numbers-mode t)

;; Basic settings
(setq ring-bell-function 'ignore
      scroll-conservatively 10000
      make-backup-files nil
      create-lockfiles nil
      mouse-wheel-scroll-amount '(1 ((shift) . 1))
      mouse-wheel-progressive-speed nil
      mouse-wheel-follow-mouse 't
      scroll-margin 5
      scroll-step 1
      scroll-conservatively 10000
      scroll-step 1
      make-backup-files nil
      backup-inhibited nil
      create-lockfiles nil
      inhibit-startup-screen 't)

;; Coding system
(set-default-coding-systems 'utf-8)

;; Font
(set-face-attribute 'default nil
                    :font "JetBrains Mono"
                    :weight 'normal
                    :height 110)

;; Theme
(use-package ayu-theme
  :config (load-theme 'ayu-grey t))

;; Mood Line
(use-package mood-line

  ;; Enable mood-line
  :config
  (mood-line-mode)
  (setq mood-line-format mood-line-format-default-extended)

  ;; Use pretty Fira Code-compatible glyphs
  :custom
  (mood-line-glyph-alist mood-line-glyphs-fira-code))

(electric-pair-mode)
(electric-quote-mode)

(provide 'golds-settings)
