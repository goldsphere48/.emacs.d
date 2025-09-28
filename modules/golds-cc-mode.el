;; -*- lexical-binding: t; -*-
(use-package clang-format
  :ensure t)

(defun golds-c-style-setup ()
  (c-set-style "bsd")
  (setq-local indent-tabs-mode t)
  (setq-local tab-width 4)
  (setq-local c-basic-offset 4)

  (c-set-offset 'defun-open 0)
  (c-set-offset 'defun-close 0)
  (c-set-offset 'block-open 0)
  (c-set-offset 'block-close 0)
  (c-set-offset 'substatement-open 0)

  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'arglist-cont-nonempty '+)
  (c-set-offset 'arglist-close 0)

  (setq-local lsp-enable-indentation nil)
  (setq-local lsp-enable-on-type-formatting nil)
  (setq-local c-indent-empty-lines nil)
)

(add-hook 'c-mode-common-hook #'golds-c-style-setup)

(provide 'golds-cc-mode)
