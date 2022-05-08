import glob
import os


def rename_files_sequentially(path_to_images: str, data_type: str) -> None:
    """Converts names to sequential png format."""
    image_list = glob.glob(f'{path_to_images}/*.{data_type}')
    for c, i in enumerate(image_list):
        new_name = i.split('\\')[0] + '\\'+f'{c+1}.png'
        print(new_name)
        os.rename(i, new_name)


if __name__ == '__main__':
    rename_files_sequentially(path_to_images='images', data_type="jpg")
