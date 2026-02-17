;; -*- lexical-binding: t; -*-
;; Disable annoying modes

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-ayu-mirage t)
  ;;(set-frame-parameter nil 'alpha-background 85)
  ;;(add-to-list 'default-frame-alist '(alpha-background . 85))
  )


(set-face-attribute 'default nil :family "JetBrains Mono" :height 110)

(use-package ligature
  :ensure t
  :config
  (ligature-set-ligatures 'prog-mode '("==" "!=" ">=" "<=" "=>" "->" "<-" "||" "&&" "::" "..."))
  (global-ligature-mode t))

(provide 'golds-theme)
