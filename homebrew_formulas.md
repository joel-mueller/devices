# Homebrew Formulas

Install homebrew here --> https://brew.sh

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

## Jupiter Notebook

```shell
brew install jupyterlab
```

run the environment with

```shell
jupyter-lab
```