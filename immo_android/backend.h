#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QJsonDocument>
#include <QJsonObject>
#include <QDateTime>
#include <QTimer>
#include <QVariantList>

class Backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QVector<QString> color READ color NOTIFY colorChanged)
    Q_PROPERTY(QString house READ house NOTIFY houseChanged)
    Q_PROPERTY(QString houseId READ houseId NOTIFY dataChanged)
    Q_PROPERTY(QString title READ title NOTIFY dataChanged)
    Q_PROPERTY(QString type READ type NOTIFY dataChanged)
    Q_PROPERTY(QString status READ status NOTIFY dataChanged)
    Q_PROPERTY(QString city READ city NOTIFY dataChanged)
    Q_PROPERTY(QString quartier READ quartier NOTIFY dataChanged)
    Q_PROPERTY(QString address READ address NOTIFY dataChanged)
    Q_PROPERTY(QString latitude READ latitude NOTIFY dataChanged)
    Q_PROPERTY(QString longitude READ longitude NOTIFY dataChanged)
    Q_PROPERTY(QString surface READ surface NOTIFY dataChanged)
    Q_PROPERTY(QString terrainSurface READ terrainSurface NOTIFY dataChanged)
    Q_PROPERTY(QString rooms READ rooms NOTIFY dataChanged)
    Q_PROPERTY(QString bedrooms READ bedrooms NOTIFY dataChanged)
    Q_PROPERTY(QString salons READ salons NOTIFY dataChanged)
    Q_PROPERTY(QString kitchens READ kitchens NOTIFY dataChanged)
    Q_PROPERTY(QString bathrooms READ bathrooms NOTIFY dataChanged)
    Q_PROPERTY(QString etage READ etage NOTIFY dataChanged)
    Q_PROPERTY(QString yearBuilt READ yearBuilt NOTIFY dataChanged)
    Q_PROPERTY(QString etat READ etat NOTIFY dataChanged)
    Q_PROPERTY(QString price READ price NOTIFY dataChanged)
    Q_PROPERTY(QString pricePerM2 READ pricePerM2 NOTIFY dataChanged)
    Q_PROPERTY(QString titreFoncier READ titreFoncier NOTIFY dataChanged)
    Q_PROPERTY(QString fraisNotaire READ fraisNotaire NOTIFY dataChanged)
    Q_PROPERTY(QString fraisSyndic READ fraisSyndic NOTIFY dataChanged)
    Q_PROPERTY(QString creditPossible READ creditPossible NOTIFY dataChanged)
    Q_PROPERTY(QString ownerName READ ownerName NOTIFY dataChanged)
    Q_PROPERTY(QString ownerPhone READ ownerPhone NOTIFY dataChanged)
    Q_PROPERTY(QString garage READ garage NOTIFY dataChanged)
    Q_PROPERTY(QString jardin READ jardin NOTIFY dataChanged)
    Q_PROPERTY(QString balcon READ balcon NOTIFY dataChanged)
    Q_PROPERTY(QString description READ description NOTIFY dataChanged)
    Q_PROPERTY(QStringList images READ images NOTIFY dataChanged)
    Q_PROPERTY(QString piscine READ piscine NOTIFY dataChanged)
    Q_PROPERTY(QString security READ security NOTIFY dataChanged)

public:
    explicit Backend(QObject *parent = nullptr);
    QVector<QString>color()const;
    QString house()const;
    Q_INVOKABLE void changeColor(int index,QString new_color);
    QString base = "https://your-link.firebaseio.com/";
    Q_INVOKABLE void get_data(QString name_house);
    Q_INVOKABLE void save_name_house_in_house(QString NameHouse);
    QString houseId() const { return m_houseId; }
    QString title() const { return m_title; }
    QString type() const { return m_type; }
    QString status() const { return m_status; }
    QString city() const { return m_city; }
    QString quartier() const { return m_quartier; }
    QString address() const { return m_address; }
    QString latitude() const { return m_latitude; }
    QString longitude() const { return m_longitude; }
    QString surface() const { return m_surface; }
    QString terrainSurface() const { return m_terrainSurface; }
    QString rooms() const { return m_rooms; }
    QString bedrooms() const { return m_bedrooms; }
    QString salons() const { return m_salons; }
    QString kitchens() const { return m_kitchens; }
    QString bathrooms() const { return m_bathrooms; }
    QString etage() const { return m_etage; }
    QString yearBuilt() const { return m_yearBuilt; }
    QString etat() const { return m_etat; }
    QString price() const { return m_price; }
    QString pricePerM2() const { return m_pricePerM2; }
    QString titreFoncier() const { return m_titreFoncier; }
    QString fraisNotaire() const { return m_fraisNotaire; }
    QString fraisSyndic() const { return m_fraisSyndic; }
    QString creditPossible() const { return m_creditPossible; }
    QString ownerName() const { return m_ownerName; }
    QString ownerPhone() const { return m_ownerPhone; }
    QString garage() const { return m_garage; }
    QString jardin() const { return m_jardin; }
    QString balcon() const { return m_balcon; }
    QString description() const { return m_description; }
    QStringList images() const { return m_images; }
    QString piscine() const { return m_piscine; }
    QString security() const { return m_security; }
signals:
    void colorChanged();
    void dataChanged();
    void houseChanged();
private:
    QVector<QString> m_color = {
                                "#999999", "#999999", "#999999",
                                "red"};

    QString m_house;
    QNetworkAccessManager *net;
    QTimer *refreshTimer = nullptr;
    QString m_houseId, m_title, m_type, m_status, m_city, m_quartier, m_address;
    QString m_latitude, m_longitude, m_surface, m_terrainSurface, m_rooms;
    QString m_bedrooms, m_salons, m_kitchens, m_bathrooms, m_etage;
    QString m_yearBuilt, m_etat, m_price, m_pricePerM2, m_titreFoncier;
    QString m_fraisNotaire, m_fraisSyndic, m_creditPossible, m_ownerName, m_ownerPhone;
    QString m_garage, m_jardin, m_balcon, m_description;
    QStringList m_images;
    QString m_piscine, m_security;
};

#endif // BACKEND_H
