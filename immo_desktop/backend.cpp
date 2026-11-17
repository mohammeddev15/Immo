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
                    qDebug() << "JSON empty - dar_15 ma kaynach f /doha/ !";
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




