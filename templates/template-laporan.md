# Laporan Praktikum MXX - Judul Modul

> **Cara menggunakan template**
>
> 1. Salin berkas ini dan ganti namanya menjadi `MXX_NIM.md`.
> 2. Ganti `MXX`, `NIM`, teks `[ISI ...]`, serta contoh pada setiap tabel.
> 3. Ikuti batas halaman pada modul: maksimal 2 halaman untuk Modul 1-3,
>    3 halaman untuk Modul 4-8, dan 4 halaman untuk Modul 9.
> 4. Ekspor laporan menjadi `MXX_NIM.pdf`.
> 5. Hapus kotak petunjuk ini sebelum laporan dikumpulkan.

---

## Identitas Praktikan

| Komponen | Isian |
|---|---|
| Nama | [ISI NAMA LENGKAP] |
| NIM | [ISI NIM] |
| Kelas | [ISI KELAS] |
| Modul | MXX - [ISI JUDUL MODUL] |
| Tanggal praktikum | [YYYY-MM-DD] |
| Seed/varian individual | [ISI SEED ATAU VARIAN] |
| Device | [CPU/CUDA/MPS dan nama perangkat jika diketahui] |

## Ringkasan Singkat

> Tulis 4-6 kalimat setelah seluruh eksperimen selesai. Pembaca harus dapat
> mengetahui masalah, eksperimen utama, hasil terpenting, dan keputusan akhir
> tanpa membaca seluruh laporan.

[ISI RINGKASAN. Contoh pola: Praktikum ini membandingkan ... pada dataset ... .
Dengan protokol ..., model A memperoleh validation accuracy ... dan membutuhkan
... detik per epoch. Model B ... . Berdasarkan akurasi, variasi, dan biaya
komputasi, model ... dipilih karena ... .]

## 1. Tujuan dan Hipotesis

### 1.1 Tujuan

Tuliskan 2-4 tujuan yang **dapat diperiksa dari hasil eksperimen**.

1. [ISI TUJUAN 1]
2. [ISI TUJUAN 2]
3. [ISI TUJUAN 3, JIKA ADA]

### 1.2 Hipotesis sebelum eksperimen

Hipotesis harus ditulis sebelum melihat hasil akhir. Nyatakan arah prediksi
dan alasannya.

| Perbandingan | Prediksi | Alasan teknis |
|---|---|---|
| [Model/konfigurasi A vs B] | [A lebih baik/cepat/stabil daripada B] | [Alasan berdasarkan konsep modul] |
| [Eksperimen kedua] | [ISI PREDIKSI] | [ISI ALASAN] |

**Contoh yang cukup spesifik:** "GRU diperkirakan lebih cepat daripada LSTM
pada anggaran parameter setara karena memakai lebih sedikit kelompok gerbang."

**Hindari:** "Model A sepertinya akan lebih bagus."

## 2. Data dan Protokol Eksperimen

> Bagian ini menjelaskan kondisi eksperimen agar hasil dapat direproduksi.
> Jangan menyalin seluruh kode dari notebook.

### 2.1 Dataset dan split

| Komponen | Nilai |
|---|---|
| Dataset | [NAMA DAN SUMBER DATASET] |
| Jumlah kelas/target | [ISI] |
| Train | [JUMLAH CONTOH DAN PERSENTASE] |
| Validation | [JUMLAH CONTOH DAN PERSENTASE] |
| Test | [JUMLAH CONTOH DAN PERSENTASE] |
| Cara split | [Acak/terstratifikasi/kronologis dan seed] |
| Praproses utama | [Normalisasi, tokenisasi, resize, dan sebagainya] |

Jelaskan satu kalimat tentang pencegahan kebocoran data:

[ISI PENJELASAN. Contoh: Normalisasi dihitung dari data latih dan test set hanya
dipakai satu kali setelah konfigurasi dipilih dari validation set.]

### 2.2 Konfigurasi yang dikendalikan

| Komponen | Nilai yang digunakan |
|---|---|
| Arsitektur dasar | [ISI] |
| Loss function | [ISI] |
| Optimizer | [ISI] |
| Learning rate | [ISI] |
| Batch size | [ISI] |
| Epoch/jumlah update | [ISI] |
| Seed | [ISI SATU ATAU BEBERAPA SEED] |
| Kriteria pemilihan model | [Contoh: validation loss terendah] |
| Batas komputasi | [Waktu, jumlah trial, parameter, atau memori] |

**Variabel yang dibuat sama untuk seluruh run:** [ISI].  
**Variabel yang sengaja diubah:** [ISI].

### 2.3 Lingkungan eksekusi

Tuliskan versi yang benar-benar tercetak di notebook.

```text
Python     : [VERSI]
PyTorch    : [VERSI]
NumPy      : [VERSI]
Device     : [CPU/CUDA/MPS]
Runtime    : [Lokal/Colab/Kaggle/lainnya]
```

## 3. Implementasi dan Pemeriksaan Kebenaran

> Isi dengan bukti yang diminta modul, bukan uraian kode baris demi baris.
> Contoh bukti: shape tensor, jumlah parameter, gradient check, status
> `requires_grad`, atau pemeriksaan vocabulary.

| Pemeriksaan | Nilai yang diharapkan | Hasil aktual | Status |
|---|---:|---:|---|
| [PEMERIKSAAN 1] | [ISI] | [ISI] | Lulus/Perlu catatan |
| [PEMERIKSAAN 2] | [ISI] | [ISI] | Lulus/Perlu catatan |
| [PEMERIKSAAN 3] | [ISI] | [ISI] | Lulus/Perlu catatan |

**Temuan dari pemeriksaan:** [Jelaskan arti hasil di atas dalam 2-4 kalimat.]

## 4. Hasil Eksperimen

### 4.1 Tabel hasil utama

Salin nilai dari `MXX_NIM_metrics.csv`. Semua run tetap dicantumkan, termasuk
run yang gagal atau hasilnya buruk. Sesuaikan nama metrik dengan modul.

| Run | Perubahan utama | Parameter | Train loss | Val. loss | Val. metric | Waktu/epoch | Catatan |
|---|---|---:|---:|---:|---:|---:|---|
| baseline | [ISI] | [ISI] | [ISI] | [ISI] | [ISI] | [ISI] | [ISI] |
| run-02 | [ISI] | [ISI] | [ISI] | [ISI] | [ISI] | [ISI] | [ISI] |
| run-03 | [ISI] | [ISI] | [ISI] | [ISI] | [ISI] | [ISI] | [ISI] |

Jika memakai beberapa seed, tambahkan ringkasan berikut:

| Model/konfigurasi | Banyak seed | Validation metric (mean +/- SD) | Waktu/epoch (mean) |
|---|---:|---:|---:|
| [ISI] | [ISI] | [ISI] | [ISI] |

### 4.2 Grafik atau visualisasi utama

Sisipkan hanya grafik yang diperlukan untuk menjawab pertanyaan modul.

![Judul singkat grafik](path/ke/grafik.png)

**Gambar 1.** [Jelaskan apa yang diplot, split yang digunakan, dan arti warna
atau garis. Pastikan gambar memiliki judul, label sumbu, legenda, dan satuan.]

**Temuan dari Gambar 1:** [Tuliskan 1-3 kalimat berbasis angka. Jangan hanya
menulis "grafik menunjukkan hasil yang baik".]

Tambahkan Gambar 2 hanya jika diwajibkan modul atau benar-benar membantu
analisis.

## 5. Analisis dan Pembahasan

Gunakan pola **klaim - bukti - penalaran** untuk setiap temuan penting.

| Unsur | Isi |
|---|---|
| Klaim | [Apa pola atau perbedaan yang ditemukan?] |
| Bukti | [Angka/tabel/gambar mana yang mendukung?] |
| Penalaran | [Mengapa hasil itu mungkin terjadi berdasarkan konsep modul?] |

Contoh analisis yang kuat:

> "Konfigurasi B meningkatkan validation accuracy dari 0,78 menjadi 0,82
> (+4 poin persentase), tetapi waktu per epoch naik dari 12,1 menjadi 19,4
> detik (+60%). Kenaikan ini konsisten dengan bertambahnya komputasi pada
> encoder. Karena batas waktu inferensi lebih penting daripada peningkatan
> empat poin, konfigurasi A lebih sesuai untuk skenario yang diberikan."

Contoh yang belum cukup:

> "Model B lebih bagus karena akurasinya lebih tinggi."

Bahas sekurangnya hal berikut:

1. **Perbandingan dengan hipotesis:** [Didukung/ditolak, sertakan angka.]
2. **Run terbaik dan run terburuk:** [Mengapa berbeda?]
3. **Trade-off:** [Akurasi vs waktu/parameter/memori/stabilitas.]
4. **Anomali atau hasil gagal:** [Penyebab yang mungkin dan bukti diagnosis.]
5. **Generalisasi:** [Apakah train-validation gap masuk akal?]

## 6. Jawaban Pertanyaan Modul

> Salin inti pertanyaan analisis dari modul, kemudian jawab secara singkat.
> Setiap jawaban harus merujuk hasil sendiri. Bagian ini boleh digabung dengan
> Bagian 5 jika batas halaman ketat.

1. **[PERTANYAAN 1]**  
   [JAWABAN DAN BUKTI ANGKA]

2. **[PERTANYAAN 2]**  
   [JAWABAN DAN BUKTI ANGKA]

3. **[PERTANYAAN 3]**  
   [JAWABAN DAN BUKTI ANGKA]

## 7. Kesimpulan dan Keterbatasan

### 7.1 Kesimpulan

Jawab tujuan praktikum dalam 3-5 kalimat. Sebutkan konfigurasi yang dipilih dan
minimal dua angka pendukung.

[ISI KESIMPULAN]

### 7.2 Keterbatasan

Sebutkan keterbatasan yang benar-benar memengaruhi interpretasi, misalnya
subset kecil, jumlah seed, epoch, ketidakseimbangan kelas, atau perangkat.

- [KETERBATASAN 1 DAN DAMPAKNYA]
- [KETERBATASAN 2 DAN DAMPAKNYA]

### 7.3 Tindak lanjut

Jika tersedia tambahan waktu atau komputasi, satu eksperimen apa yang paling
bernilai dilakukan dan mengapa?

[ISI TINDAK LANJUT]

## Referensi

Cantumkan hanya sumber yang benar-benar digunakan. Gunakan satu gaya secara
konsisten dan sertakan URL/DOI bila tersedia.

1. [Penulis. Tahun. Judul. Penerbit/Jurnal. URL atau DOI.]
2. [Dokumentasi library dan versi yang digunakan.]

## Pernyataan Orisinalitas

Saya menyatakan bahwa kode, eksperimen, analisis, dan laporan ini merupakan
pekerjaan individual. Semua sumber eksternal, termasuk potongan kode, telah
dicantumkan. Saya memahami bahwa kemiripan hasil akibat seed atau data yang
sama tidak membenarkan penyalinan notebook maupun analisis.

**Nama:** [ISI NAMA]  
**Tanggal:** [YYYY-MM-DD]

---

## Checklist Sebelum Mengumpulkan

> Hapus bagian petunjuk dan contoh yang tidak diperlukan, tetapi checklist ini
> boleh dipertahankan pada berkas Markdown. Checklist tidak perlu muncul pada
> PDF jika batas halaman ketat.

- [ ] Nama berkas adalah `MXX_NIM.md` dan `MXX_NIM.pdf`.
- [ ] Identitas, seed, device, dan versi library telah diisi.
- [ ] Isi laporan tidak melebihi batas halaman modul.
- [ ] Protokol sama dengan modul atau setiap perubahan telah dijelaskan.
- [ ] Tabel hasil konsisten dengan `MXX_NIM_metrics.csv`.
- [ ] Seluruh run dicantumkan, termasuk run yang gagal atau buruk.
- [ ] Grafik memiliki judul, label sumbu, legenda, dan caption.
- [ ] Setiap klaim utama disertai angka atau rujukan gambar/tabel.
- [ ] Test set tidak digunakan untuk memilih model atau hyperparameter.
- [ ] Kesimpulan menjawab tujuan dan menyebutkan trade-off.
- [ ] Sumber eksternal telah dicantumkan.
- [ ] Pernyataan orisinalitas telah diisi.
- [ ] Notebook lolos **Restart Kernel and Run All**.
- [ ] Tiga berkas pengumpulan (`ipynb`, `pdf`, dan `metrics.csv`) tersedia.
