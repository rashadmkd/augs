import 'package:flutter/material.dart';
import 'package:progressive_image/progressive_image.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.w700).fontFamily,
        brightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 10,
          title: Text(
            'Progressive Image Examples',
            style: TextStyle(
              color: Colors.blue[900],
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: ProgressiveImageExample(),
      ),
    );
  }
}

class ProgressiveImageExample extends StatelessWidget {
  // Image Credit - https://unsplash.com/@tjholowaychuk
  Widget get example1 => ProgressiveImage(
    placeholder: NetworkImage('https://media.istockphoto.com/id/1302436578/video/loading-circle-icon-animation-on-black-background-4k-video-loopable-preloader.jpg?s=640x640&k=20&c=WiK1w7O6VvTD7Xu7Ov8DdzGY2lX2bSlJDxw4r4DHzfI='),
    thumbnail: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBESEQ8RDxEPDw8PDw8PDw8PDxEPDw8PGBQZGRgUGBgcIS4lHB4rHxgYJjgmKy8xQ0M6GiRWQj1ASC5CQz8BDAwMEA8QGhISHDEhGB0xMTQ0MTExMTExNDQxMTQxMTQ0NDQ0NDQxMTE0ND80NDE0ND80NDE0NDE0NDw/NDQxP//AABEIAKgBLAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAADAAECBAUGB//EADcQAAIBAwIDBQYFBAIDAAAAAAABAgMEEQUSITFRBhNjkuEWIjJBYWIUUnGBkxUjkcEHoTNCU//EABoBAAIDAQEAAAAAAAAAAAAAAAIDAAEEBQb/xAAwEQACAgECBAUEAgEFAQAAAAAAAQIDEQQhEjFhkQUTFFHhFSJB0TKhM0JxgbHBI//aAAwDAQACEQMRAD8A85taFOcK8p1oUpUqW+nCUZydxPcl3cXHhF4ecvp+rVm5sKMFcOneUq3dK2dJQpVYO5c/jUdy93Z888/+jUWg0vv8wSPZ6l9/m9CO+HU1LR2v27nLCOrj2cpeJ5vQmuzVHxPN6A+qr6hegu6dzkRHYrsxR8Tzeg/sxR8TzehXrKuvYnoLunc40R2i7LUPv83oSj2UoeJ5/Qp62rqT0F3Tv8HEiO6j2Rt3/wDTz+hej2HtWl/5f5PQF6+le/b5I9Bcvbu/0ebiPS32FtPF/k9CtX7F20Xw7zz+hS8Qofv2+SLQXP2/v9HnojvvY638Tz+gvY638Tz+hfr6evb5C+m39O7/AEcCI772Ot/E8/oP7G2/ief0J6+nr2+SfTb+nd/o4AR367G2/ief0LMOw1r8+9/k9Cn4hSvft8lPw+5c8d3+jzcR6W+wlr4v8noVqvYq2Tx/d8/oUvEaH79vkpaC58sd3+jz0R3/ALHW3ifyeg3sdb+J5/QL6hT17fIX02/p3f6OBEd97HW/ief0G9j7fxPP6E+oU9e3yT6bf07v9HBCO9XY+38Tz+hsWv8Ax/ZVIqX97Pz/ALvoBPxKiKy89l+wLNDdWsvHf4PKhHrkv+OLLx/5fQxtQ7G2kJbYd7w55qZ/0VDxTTzeFnt8gQ0lk3hYPPBHbPspQ8Tz+hB9lqH3+f0G+up69vkb9Ov6d3+jjBHZPsxQ+/zehB9mqP3+b0L9bV17Fegu6d/g5AR1vs3R8Tzeg3s5R8TzegXqq+vYH0VvTucmI6z2co/f5vQj7O0fv83oF6iHUno7enc5UR1a7O0fv8w/s5R+/wA/oT1EOoS0Fz9v7/RowZYgV4osU0Y5o6NT3DRQWKIwiFjEySZtih4olgSRNIWE0NFE4jJDlA4Jpl63uFjDKCJIW9yOOTTlXj1K0veeQFPmWIgci1FR5EWsDEpMHkgSJDDZHKLHyW6NTKKTY24j3KceI0pVEkUqk8sG5vqRbKSwVGvBMbIPcLcWMwEbGyQ3DbiEwTyGoXk4fC/2KrkM5FNZ5kcU1hmhPVqjWMozpyy8vi2RciEpFxSXIqMIx5LA7ISH3EHINEaIyBSJykQlIbFipRIMg2SbBsfFipIWRZGY2RyYoJFkwCkT3EaGwlsChAs04goxLVOJJyBqrJwiESFFDpGSTyzco4Q6JIbA4IDQsk6aywFWeFkzqerxjNxbKabBWMpM6BIHURRjqUepCvqsIri0K3yOdbXPkXozCxqowY6rDqgi1WH5kRxfsBmJtSqEFIyv6pDqh1qkPzL/ACVhlrBtQCGVQ1OD4bl/kO7+OOaAeSnFvkWJg2ynPU4dUD/qEeqLww1F4NDcJsznqEOqIvU4dUTDCccGjkbJmvVIdUM9Uh1ReGTBpZHMp6rDqhf1an+ZE4X7F/8AJqNkZMyqms01/wCyK8tch1QXBL2AlKK2bNpsi2YU9dh1QCevw6hKub/At21r8nQORCUzm59oI9StPtCuoaon7AvUVe51Mqi6kXNdTjqvaF/ILYatKckh6omllmf1dbeEdXkZgqU8pE9xSGNDjMWRmxyFsiLImyORq3FvYuQiWYoqRmFhMztNmmMki0iRXVUfvQHENWMM2M5At4OUxbWA85JVnlNHJaxYTy5wbTXHgdPKYCvBSTRIWOLyKsqU1g4Kpq9am8N8ilX1OpN5lJnRahornJtIpQ7PTbSSy2boWUpZ2TObbHVy+3ibiY8b2fVk1fT6s6aPYe5ayo8Ab7JzhwqJxf6Fep07/KBr0uok8Ln/ALnP/wBQqdWPHUJ9TUvOz7gm4v8AYz9Msd9TbJfDzQanU4uS/Ax6XVRsjCSw5cgtK5rvjHcGle10uLeDpKOncFjJOel5XFGR6iGf4nZXhyjH/I+L+jlI6nP5thI6nLqzVq9nuLwiPs8H5tLMahqYvBny1N9WVJ6jLPNmhfaR3cWzJt7bdPb9RtarayhF9t+VFlm3rVajxFv9S27Wt+c29P0pRgsLmXVpxlnqFn7eR1tPoqvLTtbcn1OKunWp/E+HVFR3kup3VfS1JNNGV7PIdXqa2vuW5g1mhnGf/wApZizl3dS6sG7mXVm/faLsi2c9OGJYNVcoTWUci+FlbxIXfy6sZ1ZfU2rDSu8WS77PoGV9cXhhR0l01lHPW1CpVfu5/wBFielVks8/3OvtdLjCKSRY/BGaWseftWx26PBqPLXmt8fRnBWtrJz2yTTydXpumqGGXJ6dFSUscS3FYQNuoc1sZq9AqZtPfHJk48FgfcQ3DwWWJTNTjkIpDhY00RnDA1SRJaeSWQUge4lJgsjlIzygHhMNCZQjUDQqCmwki8pC3FZVB+8ByxiSLG8g5At428BhpBNw2SDmNuFsNInJr5m12etYTbk8PHI5PUa8oxeA/Y7XnGo6dR4y+bAtrk6nKP4FTlu4L+TWx6dGKwZusW0ZU28LMeIeFymspr/Jg9pNYUIbE+MuHPkjl1KTmsGbT1TdqxzOa1FowaO2Fwn+ct3V2km5N8zmq13Kc9y5L4TvUVNp+x1dfqYUQiuc85X/AKejW9RYQZ1InF2+p1klwbCz1Oq+SaEPTSyB6qlrO/Y6x1ofQXfR+hxv4ur9R/xNX6l+mfuK9QvZm1rVSLg8YOVsZJVP3LVd1JrDyVI2k084Zqqgowab5mO9ylNNR5HeWdeOxcVyLPfI4eFatHlkKr6v9TM9O87NG2Gqhj7kzrp14r5oC7mPVHJVLms+oN1a31J6bqBPWLOFF4N7Vq0XB8VyOGrfF+5pXNSo1xMmpnJv01XAnucjXW+Y1sdfoleKgstGt+Kh1RxVrKePdyGlKqJs06cnuaqtW4wS4Tt4XEWSdZdTmLStNxWc5RZ3z+pllVhnbrtU4KSNmpUyQcijQqNlhyLxgzzfE2wm4PbyKbmPCpgLAMZYkma0ZEKkuDKquUBrXOeCJGLyPstgk9x5TBbwTmR3D8HN4gqZOMisphIzEvI2KTLUZkt5XjIluAyPUEG3jqYJMWSsjFBBtwtwLI+QQuFDVYKXMrRsYp5XB9S1kfJXE0U64t5Y9OdWKwqk0v1A1rffxm3J9Ww2RNgZa5B8COW1ugo8jO02mnNL6mtrzKGkx99fqdStvycnDtrT1WDrLazhtXBFhWUeiHt/hQdM5UpSzzO9GqOOQFWUOiF+Dj0RY3CyDxP3C4F7APwkOiG/Bx6IsZHyTifuTgRX/CQ6Ij+Eh0RZyJsnE/cHy0Vnaw6Ii7WPRFhyINl5fuTgRl6lbxUHw+Rxdde/+53eoRbhwOGu01N56nS0TymcTxWGMPB0Wi0YuKyjWdtHojJ0Sfuo151BFvFxs3aZR8mOxDuYr5EZU0NKoQlUKUWG5RSJxwuQ+8A5Dbw1AV5n4DuZHcC3C3BYAcshN4twJsYJC5BXIjuBuQtwQpsJuJxZUVQIqhTgGrSypE1Iqd6hpXAPljFqEubL0Zk1Iz6dctRkBKvBpquUkHyLIPeTixeB63ewSKH2jpj5FmhVrBETGmQlIrAL2Of1xlXSV7yD6z70lFfMu6baKKXU3cSjTh82cuqiVuqlJcom3QfBB0wMFhEoyOc0drhwFyOmQya2laPOtxfux69SsC7LI1x4pPCM3IsnS1+zaS4SeTAuLdwk4vminFoVVqK7f4sA2M2O4j7CYH5QOTIZHm8AnNBqLL2Q1wvdOS1mis5OouavBnKavXWUvqbdLFqWxg8RlDyJcRoaRLEUaTqGHp9XCLs6+Bsq25ZMFWojGtIPKfEbeU+9yw0ZFuGBMbeN7MNkdMhuQKVVFJNjG1EtIjJg4V0QrVehSi8hSnHhzklKqR74pOZHePVRheqZclXB9+VXIbcMVaESvkWO+E6xWyILgQnzpFjvWJTAEkThRXHIPGoWI3LKWR8guCY2F8o8maMLjiW4VjEUmEVdiZ0pm2nXuHM6CNVP5k9xz8Lh9S1b3XHixEtM1yOnV4pGWE1g1dwOpLgRU0Br1OApQeTbO6Kjkxr6SVWDfI2rVr/s5bVa3Hh8ma+k3ilFZeGuaNFtT4EzD4frIedZW3z3X/R0UpcASqcQbqLHMqO4zLhyMsasnQt1Ma8dTcsYb6kY/JtZPSdOoRjCKjhJI8utK+HGS+R3Ol61BwipSSf6gKKUtzD4lCdkYyhujoLhI4TtJUiqiUcZ+Zua32gpUqcmpKU8cIp54nna1F1pOpJ5ef8AAco53/Bn8Lrfmb/hGhuYpVQHeZBykAoo7uNhXFVJNsoyvYgrmTb4sqSia661jc4+q1k1LEeQS6vkovgctdVHKbb6m3drgzBq8zbVBR5HB1uosswpPY0LCbL8pN8zOsTQLktxMJPhxkbISEwQ+CYCUmt0FcyDkPsIuJWEG5SfMW4aUxmRLwDxsZiELJYORCGbEQrI45FEkWBgSHEhyi8CHEkPggQhJD4HSBLSFgdDYJJFBxRONSS+bFOrLHMZIaa4A7DsyxzMS+fFjWWdywK+5isfiQ7/AEmFf5DoKbbSywsUQpckFTMjOzBIsUa7Rc/EYXPBmIq3t1tTwxTr4nsbYavyo/dyDale8HmWf3MOzv5RqZT9180U7i4lJvLB0uaNcKUo4ZxtR4hKdsZQ2UTurS7U0uJZnLhwOe06D4M2Yy4GKdajLY9HVq5WV5ezK9ZFeRaksgJwGwZzbottso3fJmBW5nQXS4M5+4+I11nG1PMu2BpGbYGngkuZVazEiPEWB8FBJBIEZobIzZQblsDYwhBihmJiYzIUMxhCwQg5LIPIskBC5HQFSJRkQtMOkIhGYzkChmQo4DcS3EwRSDDgVIfcVgJTDIab4At7Izk8FYC8wyb58SVjzQO6fEnY8x34Mif35OhpvgTTK0J8B3MzOJ01cgtertRgXtw5NmlcyyjFrriMqjgy6m5y2/AEJSfFAyUOY8xI6fTpLaaCkYenzeC+psxThudunUpQRfWCEyq67BTuGCoMdPVQwNd8mc7X+L9zar1MpmJXfvGqtYORqZqRd09msY1jI01MkuZKpLhCsWCG4eLBD4kSjBvkSlQkvkXbanwT6hJwFO3fY3Q0iccy5sx2M2Gu44lw+ZVkx6eVk59keCTj7ExmQ3C3Fi8jsYbcLcQmSKJRiIRAUT7sSiIRCx8D4EIphCUR9ohEZMEkh2hCBCwOog6suDEItEZjXL4sJZcxCGPkZ1/I1oMlJiEKNIKcG0ZtxQeWIQUQJrJVcGmEVMQhghI0rGeEXHVGEKa3NUG8Dd5kWUIRRGwNdrBj1uYwhkBFpYtGX1MQiMkeRNVESjNCEDgbk0LW6WMNhatdY5oQhMoLiOhTfJ17/gyq1Xc/oBbEIelhHNlJyk2yMiOWIRaBHI5EIso//9k='), // 64x36
    image: NetworkImage('https://i.imgur.com/mDQ3Qbi.jpg'), // 3842x2160
    height: 250,
    width: 500,
    fit: BoxFit.cover,
  );

  Widget _text(String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.only(bottom: 20),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
      children: <Widget>[
        example1,
        _text('Example 1  -  with Placeholder Image'),
      ],
    );
  }
}