;; -*- lexical-binding: t; -*-
(setq package-selected-packages '(lsp-mode yasnippet lsp-treemacs helm-lsp
    projectile hydra flycheck company avy which-key helm-xref dap-mode multiple-cursors))

(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))

(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      treemacs-space-between-root-nodes nil
      company-idle-delay 0.0
      company-minimum-prefix-length 1
      lsp-idle-delay 0.1)  ;; clangd is fast

(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (require 'dap-cpptools)
  (yas-global-mode)
  (setq lsp-headerline-breadcrumb-enable nil))

(use-package cmake-mode
  :ensure t
  :mode ("CMakeLists\\.txt\\'" . cmake-mode)
  :config
  (setq cmake-tab-width 4)
  (setq indent-tabs-mode 't))

(use-package cmake-integration
  :config (setq cmake-integration-debug-launcher-function 'dape)
  :vc (:url "https://github.com/darcamo/cmake-integration.git"
            :rev :newest))

(defun my/cmake-integration-keybindings ()
  (local-set-key [f5] 'cmake-integration-transient)
  (local-set-key [M-f9] 'cmake-integration-select-current-target)
  (local-set-key [f9] 'cmake-integration-save-and-compile-last-target)
  (local-set-key [C-f9] 'cmake-integration-run-ctest)
  (local-set-key [f10] 'cmake-integration-run-last-target)
  (local-set-key [S-f10] 'kill-compilation)
  (local-set-key [C-f10] 'cmake-integration-debug-last-target)
  (local-set-key [M-f10] 'cmake-integration-run-last-target-with-arguments)
  (local-set-key [M-f8] 'cmake-integration-select-configure-preset)
  (local-set-key [f8] 'cmake-integration-cmake-reconfigure))

(add-hook 'c-mode-hook 'my/cmake-integration-keybindings)
(add-hook 'c++-mode-hook 'my/cmake-integration-keybindings)

(setq cmake-integration-debug-launcher-function
      (lambda (program args working-dir)
        (dape `(codelldb-cc
                :program ,program
                :args ,(if (string-empty-p args) [] (vconcat (split-string args)))
                :cwd ,working-dir))))

(add-hook 'json-mode-hook
	  (lambda()
	    (make-local-variable 'js-indent-level)
	    (setq tab-width 4)))

(use-package zig-mode
  :ensure t)

(use-package dape
  :preface
  (setq dape-key-prefix "\C-x\C-a")

  :custom
  (dape-breakpoint-global-mode +1)

  (dape-buffer-window-arrangement 'right)
  (dape-buffer-window-arrangement 'gud)
  (dape-info-hide-mode-line nil)

  (dape-cwd-function #'projectile-project-root)

  :config
  (add-hook 'dape-display-source-hook #'pulse-momentary-highlight-one-line)

  (add-hook 'dape-start-hook (lambda () (save-some-buffers t t)))
  )

(use-package repeat
  :custom
  (repeat-mode +1))

(use-package emacs
  :custom
  (window-sides-vertical t))

(require 'multiple-cursors)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(provide 'golds-ide)
