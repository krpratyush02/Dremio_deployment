{% test dataset_not_empty(model, column_name) %}
    select count(1) as row_count
    from {{ model }}
    HAVING row_count = 0 -- If match that means that the dataset is empty
{% endtest %}
