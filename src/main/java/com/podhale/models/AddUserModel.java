package com.podhale.models;

import com.podhale.domain.Miejsce;
import com.podhale.domain.Rezerwacja;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class AddUserModel
{
    private static SessionFactory factory;

    public AddUserModel()
    {
        try {
            factory = new Configuration().configure().buildSessionFactory();

        }catch (Throwable thr)
        {
            System.err.println("Filed to create sessionFactory object: "+thr);
        }
    }


    public Integer dodajRezerwacje(Rezerwacja r) {
        Session session = factory.openSession();
        Transaction tx = null;
        Integer locationID = null;

        try {


            tx = session.beginTransaction();
            Rezerwacja rez = new Rezerwacja(r.getId_lotu(),r.getPesel(),r.getKarta(),r.getImie(),r.getNazwisko(),r.getWylot(),r.getPrzylot(),r.getPasazerowie());
            locationID = (Integer) session.save(rez);
            tx.commit();


        } catch (HibernateException he) {
            if (tx != null) tx.rollback();
            he.printStackTrace();

        } finally {
            session.close();
        }
        return locationID;
    }
}
