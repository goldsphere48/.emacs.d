;; -*- lexical-binding: t; -*-
(add-to-list 'load-path '"~/.emacs.d/modules")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'golds-package)
(require 'golds-settings)
(require 'golds-core-packages)
(require 'golds-cc-mode)
(require 'golds-evil)
(require 'golds-ide)
(require 'golds-go)
(require 'golds-org)
(require 'golds-platform)
(require 'golds-theme)
