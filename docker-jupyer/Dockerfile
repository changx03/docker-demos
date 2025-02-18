FROM quay.io/jupyter/base-notebook

RUN pip install --no-cache-dir \
    matplotlib \
    scikit-learn \
    pandas

EXPOSE 8888

CMD ["start-notebook.py", "--NotebookApp.token=my-token"]
