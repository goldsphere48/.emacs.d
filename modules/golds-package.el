;; -*- lexical-binding: t; -*-
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(setq use-package-always-ensure t)
(setq package-check-signature nil)

(provide 'golds-package)
