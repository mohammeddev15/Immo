#include "backend.h"
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QJsonDocument>
#include <QJsonObject>
#include <QDateTime>
#include <QTimer>
#include <QJsonArray>

Backend::Backend(QObject *parent) : QObject(parent) {
    net = new QNetworkAccessManager(this);
    refreshTimer = new QTimer(this);
    refreshTimer->setInterval(5000);
    connect(refreshTimer, &QTimer::timeout, this, [this](){  });

}


QVector<QString>  Backend::color() const {
    return m_color;
}
QString Backend::house()const{
    return m_house;
}


void Backend::changeColor(int index,QString new_color){
    m_color[index]= new_color;
    emit colorChanged();
}


void Backend::save_name_house_in_house(QString NameHouse){
    m_house=NameHouse;
    emit houseChanged();
}


void Backend::get_data(QString name_house){
    auto *reply1 = net->get(QNetworkRequest(QUrl(base+name_house+".json")));
    connect(reply1, &QNetworkReply::finished, this, [=](){
        if(reply1->error() == QNetworkReply::NoError){
            QJsonDocument doc = QJsonDocument::fromJson(reply1->readAll());
            if(doc.isObject()){

                QJsonObject obj = doc.object();
                if(obj.isEmpty()){
                    qDebug() << "JSON empty!";
                }
                m_title = obj.value("title").toString();
                m_type = obj.value("type").toString();
                m_status = obj.value("status").toString();
                m_city = obj.value("city").toString();
                m_quartier = obj.value("quartier").toString();
                m_address = obj.value("address").toString();
                m_latitude = obj.value("latitude").toString();
                m_longitude = obj.value("longitude").toString();
                m_surface = obj.value("surface").toString();
                m_terrainSurface = obj.value("terrainSurface").toString();
                m_rooms = obj.value("rooms").toString();
                m_bedrooms = obj.value("bedrooms").toString();
                m_salons = obj.value("salons").toString();
                m_kitchens = obj.value("kitchens").toString();
                m_bathrooms = obj.value("bathrooms").toString();
                m_etage = obj.value("etage").toString();
                m_yearBuilt = obj.value("yearBuilt").toString();
                m_etat = obj.value("etat").toString();
                m_price = obj.value("price").toString();
                m_pricePerM2 = obj.value("pricePerM2").toString();
                m_titreFoncier = obj.value("titreFoncier").toString();
                m_fraisNotaire = obj.value("fraisNotaire").toString();
                m_fraisSyndic = obj.value("fraisSyndic").toString();
                m_creditPossible = obj.value("creditPossible").toString();
                m_ownerName = obj.value("ownerName").toString();
                m_ownerPhone = obj.value("ownerPhone").toString();
                m_garage = obj.value("garage").toString();
                m_jardin = obj.value("jardin").toString();
                m_balcon = obj.value("balcon").toString();
                m_description = obj.value("description").toString();
                m_piscine = obj.value("piscine").toString();
                m_security = obj.value("security").toString();
                m_images.clear();
                QJsonArray arr = obj.value("images").toArray();
                for(auto v : arr) m_images << v.toString();
                qDebug() << "Parsed title:" << m_title;
                emit dataChanged();



            }

        }
        reply1->deleteLater();
    });







}
void Backend::post_data(QString m1_title,QString m1_type ,QString m1_status ,QString m1_address ,QString m1_latitude ,QString m1_longitude ,QString m1_surface ,QString m1_terrainSurface ,QString m1_rooms ,QString m1_bedrooms ,QString m1_salons,QString m1_kitchens,QString m1_bathrooms ,QString m1_etage ,QString m1_yearBuilt ,QString m1_etat ,QString m1_price ,QString m1_pricePerM2 ,QString m1_titreFoncier ,QString m1_fraisNotaire ,QString m1_fraisSyndic ,QString m1_creditPossible ,QString m1_ownerName ,QString m1_ownerPhone ,QString m1_garage ,QString m1_jardin ,QString m1_balcon ,QString m1_description ,QString m1_piscine ,QString m1_security ){

    m_title =m1_title;
    m_type =m1_type;
    m_status =m1_status;
    m_address =m1_address;
    m_latitude =m1_latitude;
    m_longitude =m1_longitude;
    m_surface =m1_surface;
    m_terrainSurface =m1_terrainSurface;
    m_rooms =m1_rooms;
    m_bedrooms =m1_bedrooms;
    m_salons =m1_salons;
    m_kitchens =m1_kitchens;
    m_bathrooms =m1_bathrooms;
    m_etage =m1_etage;
    m_yearBuilt =m1_yearBuilt;
    m_etat =m1_etat;
    m_price =m1_price;
    m_pricePerM2 =m1_pricePerM2;
    m_titreFoncier =m1_titreFoncier;
    m_fraisNotaire =m1_fraisNotaire;
    m_fraisSyndic =m1_fraisSyndic;
    m_creditPossible =m1_creditPossible;
    m_ownerName =m1_ownerName;
    m_ownerPhone =m1_ownerPhone;
    m_garage =m1_garage;
    m_jardin =m1_jardin;
    m_balcon =m1_balcon;
    m_description =m1_description;
    m_piscine =m1_piscine;
    m_security =m1_security;
    emit dataChanged();
    QJsonObject o{{"title", m_title},{"type",m_type },{"status",m_status },{"city",m_city },{"quartier",m_quartier },{"address",m_address },
                  {"latitude",m_latitude },{"longitude",m_longitude },{"surface",m_surface },{"terrainSurface",m_terrainSurface },{"rooms",m_rooms },
                  {"bedrooms",m_bedrooms },{"salons",m_salons },{"kitchens",m_kitchens },{"bathrooms", m_bathrooms},{"etage",m_etage },
                  {"yearBuilt",m_yearBuilt },{"etat",m_etat },{"price",m_price },{"pricePerM2",m_pricePerM2 },{"titreFoncier",m_titreFoncier },
                  {"fraisNotaire",m_fraisNotaire },{"fraisSyndic",m_fraisSyndic },{"creditPossible",m_creditPossible },{"ownerName",m_ownerName },
                  {"ownerPhone",m_ownerPhone },{"garage",m_garage },{"jardin",m_jardin },{"balcon",m_balcon },{"description",m_description },
                  {"piscine",m_piscine },{"security",m_security }};
    QJsonDocument doc(o);

    // 1 - إرسال اللاعب
    QNetworkRequest req1(QUrl(base+m_house+".json"));
    req1.setHeader(QNetworkRequest::ContentTypeHeader, "application/json");
    auto *putPlayer = net->put(req1, doc.toJson());

    connect(putPlayer, &QNetworkReply::finished, this, [=](){
        if(putPlayer->error() != QNetworkReply::NoError){
            qDebug() << "PUT data error:" << putPlayer->errorString() << putPlayer->readAll();
        } else {
            qDebug() << "data added OK";

        }
        putPlayer->deleteLater();


    });

}
