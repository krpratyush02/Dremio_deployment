{{ config(alias="global_pipeline_overview") }}
select global_pipeline_overview.country as "Country",
 global_pipeline_overview.cluster as "Cluster",
 global_pipeline_overview.fiscal_year as "FiscalYear",
 global_pipeline_overview."period" as "Period",
 global_pipeline_overview.sales_type as "Sales Type",
 global_pipeline_overview.won_revnue as "Won Revenue",
 global_pipeline_overview.won_lost_pending_stopped_revenue as "Won+Lost+PendingStopped Revenue",
 global_pipeline_overview.won_gp as "Won GP",
 global_pipeline_overview.won_lost_pending_stopped_gp as "Won+Lost+PendingStopped GP", 
 null  as "Forecast Revenue", 
 global_pipeline_overview.objective_booked_revenue as "Objective Booked Revenue",
 global_pipeline_overview.objective_booked_gp as "Objective Booked GP"
 from {{ var('dremio_space') }}.bronze.standardized.corporatedata.oss_glb_glb_soforce.global_pipeline_overview
 where global_pipeline_overview."period" <> 'TODAY'
