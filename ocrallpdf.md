# OCR for all PDFs in Directory

```shell
nano ocr_all_pdfs.sh
```

Das shellscript fuer das bearbeiten

```shell
#!/bin/bash
input_directory="path/to/your/input/directory"
output_directory="path/to/your/output/directory"

mkdir -p "$output_directory"

for input_pdf in "$input_directory"/*.pdf; do
    output_pdf="$output_directory/$(basename "$input_pdf")"
    ocrmypdf "$input_pdf" "$output_pdf" --force-ocr
done
```

excecutable machen

```shell
chmod +x ocr_all_pdfs.sh
```

laufen lassen

```shell
./ocr_all_pdfs.sh
```