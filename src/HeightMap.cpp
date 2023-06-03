#include "../include/HeightMap.h"

HeightMap::HeightMap(const string& filename) {
    ifstream::pos_type size;
    ifstream file(filename, ios::in | ios::binary | ios::ate);

    if (file.is_open()) {
        size = 2; 
        char* memblock = new char[size];

        file.seekg (0, ios::beg);
        file.read (memblock, size);

        // SRTM_version 1201 or 3601 
        const int SRTM_version = 1201;
        height.resize(SRTM_version, vector<int>(SRTM_version));

        for (int r = 0; r < SRTM_version; r++) {
            for (int c = 0; c < SRTM_version; c++) {
                height[r][c] = (memblock[0] << 8) | memblock[1];
            }
        }

        delete[] memblock;
        file.close();
    }
}

int HeightMap::getHeight(int r, int c) {
    if (r >= 0 && r < height.size() && c >= 0 && c < height[0].size()) {
        return height[r][c];
    } else {
        throw out_of_range("Indices out of range");
    }
}
