<div class="row-fluid">
    <p>
        <span class="label label-info">Imie</span><a href="#" rel="tooltip" title="Podaj swoje imie">  *</a><br />
        <input type="text" name="imie" id="imie" size="20"  placeholder="Imie*">


    </p>

    <p>
        <span class="label label-info">Nazwisko</span><a href="#" rel="tooltip" title="Podaj swoje nazwisko">  *</a><br />
        <input type="text" name="nazwisko" id="nazwisko" size="20"  placeholder="Nazwisko*">

    </p>

    <p>
        <span class="label label-info">Pesel</span><a href="#" rel="tooltip" title="Podaj swoj pesel">  *</a><br>
        <input type="text" name="pesel" id="pesel" size="20"  placeholder="Pesel*">

    </p>

    <p>
        <span class="label label-info">Karta platnicza</span><a href="#" rel="tooltip" title="Podaj numer karty platniczej">  *</a><br />
        <input type="text" name="karta" id="karta" size="20" placeholder="Numer karty*">

    </p>
    <p>
        <input type="hidden" name="id_lotu" id="id_lotu"  value="${search.id_lotu}">
        <input type="hidden" name="wylot" id="wylot"  value="${search.wylot}">
        <input type="hidden" name="przylot" id="przylot"  value="${search.powrot}">
        <input type="hidden" name="miejsceWylot" id="miejsceWylot"  value="${search.wyloty}">
        <input type="hidden" name="miejscePrzylot" id="miejscePrzylot"  value="${search.przylot}">
        <input type="hidden" name="pasazerowie" id="pasazerowie"  value="${search.liczbaPasazerow}">

    </p>

    <button type="submit"
            class="btn btn-primary">
        rezerwuj
    </button>
</div>