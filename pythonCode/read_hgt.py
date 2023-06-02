import numpy as np

def read_hgt_file(file_path):
    with open(file_path, "rb") as f:
        data = np.fromfile(f, np.dtype(">i2"), -1).reshape((1201, 1201))
    return data

# Example usage
file_path = "path/to/your/file.hgt"
elevation_data = read_hgt_file(file_path)

# Accessing elevation values
row = 500
column = 700
elevation = elevation_data[row, column]
