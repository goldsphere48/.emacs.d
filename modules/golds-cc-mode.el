;; -*- lexical-binding: t; -*-
(use-package clang-format
  :ensure t)

(use-package cc-mode
  :hook
  (c-mode-common . 
   (lambda ()
     (c-set-style "linux")
     (setq tab-width 4)
     (setq c-basic-offset 4)
     (setq indent-tabs-mode 't)
     (c-set-offset 'inline-open 0))))

(provide 'golds-cc-mode)
