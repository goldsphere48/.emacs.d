;; -*- lexical-binding: t; -*-
;; Disable annoying modes
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(delete-selection-mode 1)
(global-display-line-numbers-mode t)

;; Basic settings
(setq ls-lisp-dirs-first t
      ls-lisp-ignore-case t
      ls-lisp-UCA-like-collation nil
      ring-bell-function 'ignore
      make-backup-files nil
      create-lockfiles nil
      mouse-wheel-scroll-amount '(1 ((shift) . 1))
      mouse-wheel-progressive-speed nil
      mouse-wheel-follow-mouse 't
      scroll-margin 5
      scroll-step 1
      scroll-conservatively 10000
      inhibit-startup-screen 't)

;; Indentation defaults — must be setq-default since these are buffer-local
(setq-default tab-width 4
              indent-tabs-mode nil)

(electric-pair-mode)
(electric-quote-mode)

(provide 'golds-settings)
