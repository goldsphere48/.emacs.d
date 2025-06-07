(add-to-list 'load-path '"~/.emacs.d/modules")

(require 'golds-platform)
(require 'golds-package)
(require 'golds-settings)
(require 'golds-core-packages)
(require 'golds-cc-mode)
(require 'golds-evil)
(require 'golds-ide)
(require 'golds-org)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
