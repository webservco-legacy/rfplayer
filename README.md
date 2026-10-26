# rfPlayer

rfPlayer ("Rudimentary FLV Player"), a small Flash video player of 2009 in ActionScript 3: an FLV video with a poster
image, a skin, volume, autoplay and Timed Text captions, all set through FlashVars, embedded with SWFObject. A historical
archive, kept read-only: Flash Player reached its end of life in 2020 and no current browser runs it.

## History

| Date | Commit | |
|---|---|---|
| 2009-01-15 | 936af20 | rfPlayer 0.9.0, the first test version (tag `v0.9.0` in my old repository) |
| 2009-01-19 | 6fc97fb | rfPlayer 1.0.0, the first package |
| 2009-01-19 | 0b87c81 | rfPlayer 1.0.0: two sizes (320 and 480), the sources, the skin, the docs (tag `v1.0.0`) |

## What is in it

- `rfPlayer_320.*`, `rfPlayer_480.*`: the two players (SWF), their pages, the stylesheet, the skin and the captions file;
- `extra/rfPlayer_src/`: the ActionScript and FLA sources;
- `extra/rfPlayer_skins/`: the skin (FLA and SWF);
- `extra/rfPlayer_doc/`: the FlashVars and the to-do list.

Left out of the whole history: the sample videos (not mine), and the zip of Adobe's FLVPlayback skin
sources of Flash CS3. To try it, put an FLV video next to the page and name it in FlashVars (`flvurl`).

## How it was built

From the release copies of 2009, turned into git in 2026 (4 commits), the dates kept. The last commit before
this README sets LF line endings and indents with spaces.

## Third-party code

SWFObject 2.1 (MIT): `swfobject.js`, `expressInstall.swf` and the release zips in `extra/swfobject/`.

## Licence

MIT (see `LICENSE`), added in 2026: the project named no licence.

See also the other archives of my early projects in [webservco-legacy](https://github.com/webservco-legacy).
