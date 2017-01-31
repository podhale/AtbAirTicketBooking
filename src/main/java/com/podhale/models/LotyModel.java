package com.podhale.models;



import com.podhale.domain.Loty;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LotyModel
{
    private static SessionFactory factory;

    public LotyModel()
    {
        try {
            factory = new Configuration().configure().buildSessionFactory();

        }catch (Throwable thr)
        {
            System.err.println("Filed to create sessionFactory object: "+thr);
        }
    }

    /**
     * Metoda zwracająca liste wszystkich lotów spełniających kryteria wyszukiwania lotnisk.
     * @param start
     * @param end
     * @return
     */
    public List<Loty> wyswietlLoty(String start, String end) {

        Session session = factory.openSession();
        Transaction tx = null;
        List<Loty> loty = new ArrayList<Loty>();

        try {
            tx = session.beginTransaction();
            List location = session.createQuery("from Loty where (startAirport = '"+start+"')AND " +
                                                                    "(endAirport = '"+end+"')").list();

            for (Iterator iterator =
                 location.iterator(); iterator.hasNext(); ) {
                Loty loc = (Loty) iterator.next();
                loty.add(loc);
            }
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return loty;
    }

    /**
     * Metoda zwraca liste informacji na temat wybranego lotu uzytkownika.
     * @param id_lotu
     * @return
     */
    public ArrayList<Loty> lotUzytkownika(String id_lotu)
    {

        Session session = factory.openSession();
        Transaction tx = null;
        ArrayList<Loty> l = new ArrayList<Loty>();
        int lot = Integer.parseInt(id_lotu);

        try {
            tx = session.beginTransaction();
            List location = session.createQuery("from Loty where id = "+lot).list();

        for (Iterator iterator =
             location.iterator(); iterator.hasNext(); ) {
            Loty loc = (Loty) iterator.next();
            l.add(loc);
        }
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return l;
    }

}
