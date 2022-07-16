## Section 1: Data Pipelines

This solution process a data file `dataset.csv` daily. 
Processing tasks in `data_pipeline.py`:

- Split the `name` field into `first_name`, and `last_name`
- Remove any zeros prepended to the `price` field
- Delete any rows which do not have a `name`
- Create a new field named `above_100`, which is `true` if the price is strictly greater than 100

The expected output of the processing task is a CSV file including a header containing the field names.

To process the file:
1. install requirements.txt: `pip install -r requirements.txt` 
2. processing the file: `python data_pipeline.py --file <filename>`
3. running the scheduler: set up a cron job on linux using `crontab.txt`

Assumptions: the script `data_pipeline.py` and file `dataset.csv` to be processed is updated daily at a specific folder location (/root).
