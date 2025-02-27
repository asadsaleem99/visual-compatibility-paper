dir="polyvore"
file="$dir/polyvore.tar.gz"
if [ ! -f "$file" ]; then
	wget --no-check-certificate 'https://drive.google.com/file/d/0B4Eo9mft9jwoWHhyc05VQnNyMHc/view?usp=sharing&resourcekey=0-n17-2LbTwtjuw2IiDsTkhA' -O "$file"
fi

file_images="$dir/polyvore_images.tar.gz"
if [ ! -f "$file_images" ]; then
	gdown 'https://drive.google.com/file/d/0B4Eo9mft9jwoNm5WR3ltVkJWX0k/view?usp=sharing&resourcekey=0-U-30d1POF7IlnAE5bzOzPA' -O "$file_images"
fi

if [[ ! -e "$dir/jsons" ]] || [ -z "$(ls -A $dir/jsons)" ]; then
    mkdir -p "$dir/jsons"
	tar zxfv "$file" --directory "$dir/jsons"
fi

if [[ ! -e "$dir/images" ]]; then
	tar xzvf "$file_images" --directory "$dir"
fi
