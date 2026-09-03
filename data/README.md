# Data praktikum

Dataset besar tidak disimpan di repositori. Gunakan struktur berikut:

```text
data/
├── raw/          # hasil unduhan, tidak dimodifikasi
├── processed/    # data yang sudah dibersihkan atau ditokenisasi
└── sample/       # sampel kecil untuk smoke test
```

Pemetaan dataset:

| Modul | Dataset | Cara memperoleh |
|---|---|---|
| 1–2 | XOR dan `make_moons` | Dibangkitkan oleh notebook |
| 3–4 | Fashion-MNIST | `download-data.sh --vision` |
| 5 | CIFAR-10/Fashion-MNIST | `download-data.sh --vision` |
| 6 | Oxford-IIIT Pet atau dataset dosen | Unduh terpisah dan letakkan di `raw/transfer/` |
| 7–9 | AG News versi CSV | Letakkan `train.csv` dan `test.csv` di `raw/ag_news/` |

Jangan melakukan split berdasarkan urutan file tanpa stratifikasi untuk tugas
klasifikasi. File test tidak digunakan dalam tuning. Jika dataset dibagikan
oleh dosen, nama file dan checksum akan diumumkan bersama modul.
