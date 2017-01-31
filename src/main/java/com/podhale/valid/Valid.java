package com.podhale.valid;

import com.podhale.domain.Rezerwacja;
import com.podhale.forms.Form;
import org.springframework.validation.annotation.Validated;

@Validated
public class Valid
{
    /**
     * Podstawowa walidacja formularza wyszukiwania.
     *
     * @param form
     * @return
     */
    public boolean validFormSearch(Form form)
    {
        int wszystko_ok = 0;
        try
        {
            if(form.getWylot().equals(""))
                wszystko_ok = 1;
            if (form.getPrzylot().equals(""))
                wszystko_ok = 1; if (form.getPrzylot().equals("") || form.getPrzylot().equals("  "))
            wszystko_ok = 1;

            if (form.getWyloty().equals("") || form.getWyloty().equals(" "))
                wszystko_ok = 1;

        }catch (Exception e)
        {
            return false;
        }

        if (wszystko_ok==0)
            return true;
        else
            return false;
    }

    /**
     * Podstawowa walidacja danych z formularza 2.
     * @param r
     * @return
     */
    public boolean validRezerwacja(Rezerwacja r)
    {
        int wszystko_ok = 0;

        try {
            String pes = String.valueOf(r.getPesel());
            String kar = String.valueOf(r.getKarta());

            if (pes.length()!= 11)
                wszystko_ok = 1;
            if (kar.length() != 11)
                wszystko_ok = 1;
            if (r.getImie().equals(""))
                wszystko_ok = 1;
            if (r.getNazwisko().equals(""))
                wszystko_ok = 1;

        }catch (Exception e)
        {
            return false;
        }
        if (wszystko_ok==0)
            return true;
        else
            return false;
    }
}
