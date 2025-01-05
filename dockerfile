FROM jupyter/base-notebook:latest

# Install Streamlit and Pandas
RUN pip install --no-cache-dir streamlit pandas

# Set environment variable for JupyterLab
ENV JUPYTER_ENABLE_LAB=yes
