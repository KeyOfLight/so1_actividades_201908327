#!/bin/bash


generate_random_name() {
    cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 8
}

images=(
    "low_image"
    "high_image"
)

selected_images=()
for ((i=0; i<10; i++)); do
    selected_images+=("${images[RANDOM % ${#images[@]}]}")
done

# Bucle para crear 10 contenedores
for image in "${selected_images[@]}"; do
    sudo docker run -d "$image"
done
