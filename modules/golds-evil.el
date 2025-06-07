(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil))

;; Evil-leader для сокращённых команд
(use-package evil-leader
  :config
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
    "t" 'eshell
    "f" 'find-file
    "b" 'switch-to-buffer))

;; Evil-collection — интеграция с другими мажор-модами
(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;; Быстрые комментарии
(use-package evil-commentary
  :after evil
  :config
  (evil-commentary-mode))

(provide 'golds-evil)
