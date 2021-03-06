//
//  Wave OBJ class
//  The constructor places the object at the origin
//  All parameters are assigned default values
//
#ifndef _WAVEOBJ_H_
#define _WAVEOBJ_H_

#include "object.h"
#include <QString>
#include <QHash>

//  Material structure
typedef struct
{
   Color Ke,Ka,Kd,Ks; //  Colors
   float Ns;          //  Shininess
   float d;           //  Transparency
   unsigned int map;  //  Texture
} Material;

class WaveOBJ: public Object
{
private:
   float sr;              // Scale
   int   list;            // Display list
   QHash<QString,Material> mat;
   void SetMaterial(const QString& name);
   void LoadMaterial(const QString& name,const QString& path="");
public:
   WaveOBJ(const char* file,const QString& path);     //  Constructor
   void scale(float s);                               //  Set scale
   void display();                                    //  Render the object
};

#endif
