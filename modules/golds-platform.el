;; -*- lexical-binding: t; -*-

(cond
 ((eq system-type 'windows-nt)

  (setq default-process-coding-system '(utf-8 . utf-8))
  (setq locale-coding-system 'utf-8)

  (setq process-coding-system-alist
        '(("cmdproxy" . (cp1251 . cp1251))
          ("cmd" . (cp1251 . cp1251))))
  )
 (t
  (setq default-process-coding-system '(utf-8 . utf-8))))

(provide 'golds-platform)
