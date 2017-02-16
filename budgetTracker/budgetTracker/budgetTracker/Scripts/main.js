(function ($) {
    $(document).ready(function () {
        $('#tableExpenses').prepend('<thead>' +
                                     '<tr>' +
                                       '<th>Expense</th>' +
                                       '<th>Amount</th>' +
                                     '</tr>' +
                                    '</thead>');
    });
})(jQuery);