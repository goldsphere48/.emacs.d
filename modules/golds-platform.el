;; -*- lexical-binding: t; -*-
(when (eq system-type 'windows-nt)
  (add-to-list 'exec-path "C:/msys64/usr/bin")
  (add-to-list 'exec-path "C:/msys64/mingw/usr/bin"))

(provide 'golds-platform)
