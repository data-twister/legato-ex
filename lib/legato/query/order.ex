defmodule Legato.Query.Order do
  @derive [Jason.Encoder]
  defstruct field_name: nil, order_type: :value, sort_order: :ascending

  # order_type: VALUE, DELTA, SMART, HISTOGRAM_BUCKET, DIMENSION_AS_INTEGER
  # sort_order: ASCENDING, DESCENDING
end
