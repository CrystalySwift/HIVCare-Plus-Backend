# Compiler yang digunakan
CC = gcc

# Opsi kompilasi: -I./include memberitahu komputer untuk mencari file .h di folder include
CFLAGS = -I./include -Wall

# Daftar semua file .c di folder src
SRC = src/main.c \
      src/kelola_terapi.c \
      src/simpan_muat_data.c \
      src/tambah_pasien.c \
      src/tampil_detail_pasien.c \
      src/tampil_semua_pasien.c \
      src/utilitas.c

# Mengubah nama file .c menjadi .o (object files)
OBJ = $(SRC:.c=.o)

# Nama program output
EXEC = hivcare

# Target utama (saat ketik 'make')
all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(OBJ) -o $(EXEC)

# Cara kompilasi tiap file .c
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Target untuk membersihkan file sampah (saat ketik 'make clean')
clean:
	rm -f src/*.o $(EXEC)