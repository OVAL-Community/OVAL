#!/bin/bash

# Set the paths.
SCHEMA_DIR="../oval-schemas"
XSLT_FILE="oval_xsd2rst.xsl"
OUTPUT_DIR="../guidelines/oval-schema-documentation"
SAXON_JAR_DOWNLOAD_URL="https://repo1.maven.org/maven2/net/sf/saxon/Saxon-HE/10.9/Saxon-HE-10.9.jar"
SAXON_JAR="Saxon-HE.jar"

# Downloadd Saxon.
curl ${SAXON_JAR_DOWNLOAD_URL} --output ${SAXON_JAR}

# Find all XSD files in the schema directory.
find "$SCHEMA_DIR" -maxdepth 1 -name "*.xsd" -print0 | while IFS= read -r -d $'\0' file; do
  # Extract the filename without the extension.
  filename=$(basename "$file" .xsd)

  # Create the output filename.
  outfile="$filename.rst"

  # Construct the full output path.
  output_path="$OUTPUT_DIR/$outfile"

  # Execute the Saxon transformation.
  java -jar "$SAXON_JAR" -s:"$file" -xsl:"$XSLT_FILE" -o:"$output_path"

  # Check the exit code of the java command.  Important for error handling.
  if [ $? -ne 0 ]; then
    echo "Error: Saxon transformation failed for $file.  Check the Saxon output for details."
  fi

done

echo "Script finished."
