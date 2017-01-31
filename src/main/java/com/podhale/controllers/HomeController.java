package com.podhale.controllers;

import com.podhale.domain.Rezerwacja;
import com.podhale.forms.Form;
import com.podhale.models.AddUserModel;
import com.podhale.models.LotyModel;
import com.podhale.test.wyswietl.WyswietlanieLotow;
import com.podhale.valid.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
public class HomeController
{

    /**
     * Wyswietlenie glownego widoku.
     *
     * @param arg0
     * @param arg1
     * @return
     */


    @RequestMapping(value = "/")
    public ModelAndView home(HttpServletRequest arg0,
                       HttpServletResponse arg1) {

        WyswietlanieLotow app = new WyswietlanieLotow();

        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("index", app.pokazMiejsce());

        return modelAndView;
    }

    /**
     * Wyswietlenie widoku wyszukiwania lotów.
     *
     * @param arg0
     * @param arg1
     * @return
     */
    @RequestMapping(value = "/result")
    public ModelAndView result(HttpServletRequest arg0,
                             HttpServletResponse arg1) {


        String parm1 = arg0.getParameter("wyloty");
        String parm2 = arg0.getParameter("przylot");
        String parm3 = arg0.getParameter("wylot");
        String parm4 = arg0.getParameter("powrot");
        int parm5 = Integer.parseInt(arg0.getParameter("liczbaPasazerow"));


        Form f = new Form(parm1,parm2,parm3,parm4,parm5);
        LotyModel app = new LotyModel();
        WyswietlanieLotow loty = new WyswietlanieLotow();

        Valid valid = new Valid();
        if(valid.validFormSearch(f) && !parm1.equals(parm2))
        {
            ModelAndView modelAndView = new ModelAndView("result");
            modelAndView.addObject("result", app.wyswietlLoty(parm1,parm2));
            modelAndView.addObject("index", loty.pokazMiejsce());
            return modelAndView;
        }else
        {
            ModelAndView error = new ModelAndView("errorForms");
            error.addObject("index", loty.pokazMiejsce());


            return error;
        }

    }


    /**
     * Wyswietlanie 2 formularza
     * @param arg0
     * @param arg1
     * @return
     */

    @RequestMapping(value = "/personalData")
    public ModelAndView person(HttpServletRequest arg0,
                               HttpServletResponse arg1) {

        WyswietlanieLotow loty = new WyswietlanieLotow();

        ModelAndView modelAndView = new ModelAndView("personalData");
        modelAndView.addObject("index", loty.pokazMiejsce());

        return modelAndView;
    }

    /**
     * Jesli poprzednie dane byly poprawne, wyswietl widok potwierdzenia rezerwacji
     * @param arg0
     * @param arg1
     * @return
     */

    @RequestMapping(value = "/successBooking")
    public ModelAndView booking(HttpServletRequest arg0,
                               HttpServletResponse arg1) {

        ModelAndView modelAndView = null;

        String parm0 = arg0.getParameter("id_lotu");
        String parm1 = arg0.getParameter("pesel");
        String parm2 = arg0.getParameter("karta");
        String parm3 = arg0.getParameter("nazwisko");
        String parm4 = arg0.getParameter("imie");
        String parm5 = arg0.getParameter("pasazerowie");
        String parm6 = arg0.getParameter("wylot");
        String parm7 = arg0.getParameter("przylot");

        Rezerwacja r = new Rezerwacja(parm0,parm1,parm2,parm4,parm3,parm6,parm7,parm5);


        Valid v = new Valid();
        boolean valid = v.validRezerwacja(r);
        if (valid)
        {
            LotyModel app = new LotyModel();
            modelAndView = new ModelAndView("successBooking");
            modelAndView.addObject("lot", app.lotUzytkownika(parm0));
        }else
        {
            WyswietlanieLotow loty = new WyswietlanieLotow();
            modelAndView = new ModelAndView("personalData");
            modelAndView.addObject("index", loty.pokazMiejsce());
        }

        return modelAndView;
    }


    @RequestMapping(value = "/confirmation")
    public ModelAndView confir(HttpServletRequest arg0,
                               HttpServletResponse arg1) {

        ModelAndView modelAndView = null;
        WyswietlanieLotow loty = new WyswietlanieLotow();

        String parm0 = arg0.getParameter("id_lotu");
        String parm1 = arg0.getParameter("pesel");
        String parm2 = arg0.getParameter("karta");
        String parm3 = arg0.getParameter("nazwisko");
        String parm4 = arg0.getParameter("imie");
        String parm5 = arg0.getParameter("pasazerowie");
        String parm6 = arg0.getParameter("wylot");
        String parm7 = arg0.getParameter("przylot");

        Rezerwacja r = new Rezerwacja(parm0,parm1,parm2,parm4,parm3,parm6,parm7,parm5);
        AddUserModel add = new AddUserModel();

        add.dodajRezerwacje(r);
        modelAndView = new ModelAndView("confirmation");


        return modelAndView;
    }
}
