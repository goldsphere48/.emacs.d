;; -*- lexical-binding: t; -*-
;; Disable annoying modes

(use-package naysayer-theme
  :vc (:url "https://github.com/nickav/naysayer-theme.el"
            :rev :newest))

(use-package doom-themes
  :ensure t)

(load-theme 'naysayer t)


(set-face-attribute 'default nil :family "JetBrains Mono" :height 110)

(use-package ligature
  :ensure t
  :config
  (ligature-set-ligatures 'prog-mode '("==" "!=" ">=" "<=" "=>" "->" "<-" "||" "&&" "::" "..."))
  (global-ligature-mode t))

(use-package nerd-icons
  :ensure t)

(use-package nerd-icons-dired
  :ensure t
  :hook (dired-mode . nerd-icons-dired-mode))

(provide 'golds-theme)
