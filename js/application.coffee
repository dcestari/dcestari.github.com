---
---

jQuery ->
  $('.post img').each ->
    $(this).attr('data-mfp-src', $(this).attr('src'))

  $('.post img').magnificPopup type: 'image', gallery: { enabled: true }
