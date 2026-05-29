;; -*- lexical-binding: t; -*-

;; C / C++
(setq c-default-style "bsd")
(setq-default c-basic-offset 4)

(defun my-c-style-setup ()
  (c-set-offset 'inclass 4)
  (c-set-offset 'access-label -4)
  (c-set-offset 'statement-cont 0)
  (c-set-offset 'case-label '+))

(add-hook 'c-mode-common-hook 'my-c-style-setup)

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  (setq lsp-headerline-breadcrumb-enable nil)
  (setq lsp-enable-on-type-formatting nil)
  :commands lsp)

(defvar my-compile-directory nil
  "If set, compilation runs from this directory regardless of buffer.")

(defun my-lock-compile-directory ()
  "Lock the current directory as the compilation directory."
  (interactive)
  (setq my-compile-directory default-directory)
  (message "Compile directory locked to: %s" my-compile-directory))

(defun my-unlock-compile-directory ()
  "Unlock compilation directory — use buffer's directory again."
  (interactive)
  (setq my-compile-directory nil)
  (message "Compile directory unlocked"))

(defun pcompile ()
  "Compile from the locked directory if set, otherwise from current."
  (interactive)
  (let ((default-directory (or my-compile-directory default-directory))
        (cmd (read-shell-command "Compile command: " compile-command 'compile-history)))
    (compile cmd)))

(global-set-key (kbd "C-c l") 'my-lock-compile-directory)
(global-set-key (kbd "C-c u") 'my-unlock-compile-directory)
(global-set-key (kbd "<f5>")  'projectile-compile-project)

(global-set-key (kbd "C-c f") 'clang-format-buffer)

(provide 'golds-coding)
