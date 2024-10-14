# Homebrew Formulas

Install homebrew here --> https://brew.sh

## Deinstall a formula

```shell
brew uninstall --force <formula>
```

## Mail adress

```
brew install mailsy
```

Mail generieren und lesen

```
mailsy g
mailsy m
```

## Speed test

```
brew install speedtest-cli
speedtest-cli
```

## Wifi password reader

```
brew install wifi-password
wifi-password
```

## VLC alternative

```
brew install mpv
mpv (path of the video)
```

## Youtube downloader

```
brew install yt-dlp
yt-dlp "https://www.youtube.com/watch?v=uHgt8giw1LY"
```

Alternative Seite —> https://ytmp3.nu/aIBN/

## Video file format changer

```
brew install ffmpeg
```

MP4

```
ffmpeg -i input.mkv -codec copy output.mp4
ffmpeg -i input.webm -c:v libx264 -c:a aac output.mp4
```

MP3

```
ffmpeg -i input.mkv -vn -ar 44100 -ac 2 -ab 192k -f mp3 output.mp3
ffmpeg -i input.webm -vn -ar 44100 -ac 2 -ab 192k -f mp3 output.mp3
```

## OCR with Brew

```
brew install ocrmypdf
ocrmypdf input.pdf output.pdf --force-ocr
ocrmypdf -l eng+deu input.pdf output.pdf
```

## Word to PDF converter

Pandoc --> https://pandoc.org

Kann man mit homebrew machen, aber bisher noch keine Zeit

## Markdown helper

### Merge MD files together

```shell
brew install pandoc
```

Merge markdown files together

```shell
pandoc file1.md file2.md file3.md -o merged.md
```

### Make table of content

```shell
pandoc --toc -s example.md -o example_with_toc.md
```

### Markdown to PDF

```shell
pandoc example.md --pdf-engine=tectonic -o example.pdf
```

Or define a yaml file for more adjustments on the top on the md file (begin and start with ---)

```yaml
title: "Homebrew formulas"
author:
- Joel Müller
geometry: 
 - left=1in
 - right=1in
 - top=1in
 - bottom=1in
toc: true
```

Or make the file external

```shell
pandoc example.md --pdf-engine=tectonic --metadata-file=metadata.yaml -o example.pdf
```