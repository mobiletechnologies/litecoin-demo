# Step 4 (Script kiddies)

Wanted behaviour

- get some data from the file (`data_file.txt`) excluding header

- re-arrange cols for output

- change the standard UID adding a prefix, sorting list by vote

- Fix some wrong chars

- Update TODO field with a date

- Uppercase results

It finally output rows in terminal as CSV.

```bash
$ ./script1.sh
UID-1574,RAHUL,MATHS,90,2021-07-13
UID-1567,SHYAM,BIOLOGY,87,2021-07-13
UID-1456,HARI,HISTORY,89,2021-07-13
UID-1444,KEDAR,ENGLISH,85,2021-07-13
UID-1366,AMIT,PHYSICS,80,2021-07-13
```

# Step 5 (script grown-ups)

Same result can be obtained using python script in `python/main.py`.

```bash
$ python/main.py -i data_file.txt
UID-1574,RAHUL,MATHS,90,2021-07-13
UID-1567,SHYAM,BIOLOGY,87,2021-07-13
UID-1456,HARI,HISTORY,89,2021-07-13
UID-1444,KEDAR,ENGLISH,85,2021-07-13
UID-1366,AMIT,PHYSICS,80,2021-07-13
```