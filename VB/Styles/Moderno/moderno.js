$(document).ready(function () {
    //CheckBox
    var uncheckedAspNetCheckBox = $(".Moderno input:checkbox:not(:checked):not(:disabled)");
    uncheckedAspNetCheckBox.hide();
    uncheckedAspNetCheckBox.after("<div tabindex='0' class='ModernoCheckBox ModernoCheckBoxUnchecked'/>");

    var checkedAspNetCheckBox = $(".Moderno input:checkbox:checked:not(:disabled)");
    checkedAspNetCheckBox.hide();
    checkedAspNetCheckBox.after("<div tabindex='0' class='ModernoCheckBox ModernoCheckBoxChecked'/>");

    var uncheckedAspNetCheckBoxDisabled = $(".Moderno input:checkbox:not(:checked):disabled");
    uncheckedAspNetCheckBoxDisabled.hide();
    uncheckedAspNetCheckBoxDisabled.after("<div class='ModernoCheckBox ModernoCheckBoxUncheckedDisabled'/>");

    var checkedAspNetCheckBoxDisabled = $(".Moderno input:checkbox:checked:disabled");
    checkedAspNetCheckBoxDisabled.hide();
    checkedAspNetCheckBoxDisabled.after("<div class='ModernoCheckBox ModernoCheckBoxCheckedDisabled'/>");

    $('.ModernoCheckBox').click(function () {
        var $image = $(this);
        var $checkbox = $(this).prev("input");
        if ($checkbox.is(':disabled'))
            return;

        $checkbox.attr('checked', !$checkbox.attr('checked'));
        $image.toggleClass("ModernoCheckBoxChecked");
        $image.toggleClass("ModernoCheckBoxUnchecked");
    })

    //Calendar
    $(".Moderno.Moderno_Calendar").attr("cellpadding", "4");
    var calendarTitleContainer = $(".Moderno_CalendarTitle").parent();
    calendarTitleContainer.addClass("ModernoCalendarTitleContainer");
    calendarTitleContainer.attr("style", "");

    var calendarTitleNextButton = calendarTitleContainer.find("a:eq(1)");
    if (calendarTitleNextButton)
        calendarTitleNextButton.text('___');
    calendarTitleNextButton.addClass("Moderno_edtCalendarNextMonth");


    var calendarTitlePrevButtonContainer = calendarTitleContainer.find("td:eq(0)");

    calendarTitlePrevButtonContainer.each(function () {
        var calendarTitlePrevButton = $(this).find("a");
        if (calendarTitlePrevButton.length > 0) {
            calendarTitlePrevButton.text('___');
            calendarTitlePrevButton.addClass("Moderno_edtCalendarPrevMonth");
        }
        else {
            $(this).text('');
            $(this).append("<div class='Moderno_edtCalendarPrevMonthDisabled'/>");
        }
    })

    var calendarTitleNextButtonContainer = calendarTitleContainer.find("td:eq(2)");

    calendarTitleNextButtonContainer.each(function () {
        var calendarTitleNextButton = $(this).find("a");
        if (calendarTitleNextButton.length > 0) {
            calendarTitleNextButton.text('___');
            calendarTitleNextButton.addClass("Moderno_edtCalendarNextMonth");
        }
        else {
            $(this).text('');
            $(this).append("<div class='Moderno_edtCalendarNextMonthDisabled'/>");
        }
    })

    //Radioutton
    var uncheckedAspNetRadioButton = $(".Moderno input:radio:not(:checked):not(:disabled)");
    uncheckedAspNetRadioButton.hide();
    uncheckedAspNetRadioButton.after("<div tabindex='0' class='ModernoRadioButton ModernoRadioButtonUnchecked'/>");

    var checkedAspNetRadioButton = $(".Moderno input:radio:checked:not(:disabled)");
    checkedAspNetRadioButton.hide();
    checkedAspNetRadioButton.after("<div tabindex='0' class='ModernoRadioButton ModernoRadioButtonChecked'/>");

    var uncheckedAspNetRadioButtonDisabled = $(".Moderno input:radio:not(:checked):disabled");
    uncheckedAspNetRadioButtonDisabled.hide();
    uncheckedAspNetRadioButtonDisabled.after("<div class='ModernoRadioButton ModernoRadioButtonUncheckedDisabled'/>");

    var checkedAspNetRadioButtonDisabled = $(".Moderno input:radio:checked:disabled");
    checkedAspNetRadioButtonDisabled.hide();
    checkedAspNetRadioButtonDisabled.after("<div class='ModernoRadioButton ModernoRadioButtonCheckedDisabled'/>");

    $('.ModernoRadioButton').click(function () {
        var $image = $(this);
        var $radioBtn = $(this).prev("input");
        if ($radioBtn.is(':disabled'))
            return;

        $radioBtnInGroup = $("input[name=" + $radioBtn.attr('name') + "]");
        $radioBtnInGroup.attr('checked', false);
        $radioBtn.attr('checked', !$radioBtn.attr('checked'));

        $radioBtnInGroup.next("div").removeClass("ModernoRadioButtonChecked");
        $radioBtnInGroup.next("div").addClass("ModernoRadioButtonUnchecked");
        $image.toggleClass("ModernoRadioButtonChecked");
        $image.toggleClass("ModernoRadioButtonUnchecked");
    })
});