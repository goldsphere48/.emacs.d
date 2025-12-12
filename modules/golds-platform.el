;; -*- lexical-binding: t; -*-

(cond
 ((eq system-type 'windows-nt)
  
  (add-to-list 'exec-path "C:/msys64/mingw64/bin")
  (add-to-list 'exec-path "C:/msys64/usr/bin")
  
  (setenv "PATH" (concat "C:/msys64/usr/bin;C:/msys64/mingw64/bin;"
                         (getenv "PATH")))

  (setq default-process-coding-system '(cp1251 . cp1251))
  (setq process-coding-system-alist '(("" . (cp1251 . cp1251))))
  
  (setq system-messages-locale "Russian_Russia.1251")
  (setq locale-coding-system 'cp1251)
  )
 (t
  (setq default-process-coding-system '(utf-8 . utf-8))))

(provide 'golds-platform)
