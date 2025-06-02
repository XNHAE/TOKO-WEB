@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Laporan Laba Rugi</h1>
    <div class="row">
        <div class="col-md-6">
            <label for="start_date">Start Date:</label>
            <input type="date" id="start_date" class="form-control" value="2025-01-01">
        </div>
        <div class="col-md-6">
            <label for="end_date">End Date:</label>
            <input type="date" id="end_date" class="form-control" value="2025-12-31">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-md-12">
            <h3>Total Profit: <span id="total_profit">Loading...</span></h3>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script>
    $(document).ready(function() {
        function getTotalProfit() {
            const startDate = $('#start_date').val();
            const endDate = $('#end_date').val();

            $.ajax({
                url: "{{ route('laba-rugi.total') }}",
                type: 'GET',
                data: {
                    start_date: startDate,
                    end_date: endDate
                },
                success: function(response) {
                    $('#total_profit').text(response.total_profit);
                }
            });
        }

        $('#start_date, #end_date').change(function() {
            getTotalProfit();
        });

        getTotalProfit();
    });
</script>
@endsection