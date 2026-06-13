# salatvakti-wep-assets

Salatvakti landing page (`wep`) screenshot assets.

## Structure

```
screenshots/
  namaz.png
  pusula.png
  kesfet.png
  ...
```

## CDN usage

Site loads images from jsDelivr:

```
https://cdn.jsdelivr.net/gh/yusufcihangir/salatvakti-wep-assets@main/screenshots/<filename>
```

## Adding or updating images

1. Add or replace files under `screenshots/`
2. Commit and push to `main`
3. jsDelivr cache clears within a few minutes (or purge via jsDelivr dashboard if needed)

## Local preview

Keep filenames identical to references in `wep/index.html` (case-sensitive on Linux/CDN).
