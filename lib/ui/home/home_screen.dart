import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '카카오 T',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAflBMVEX///8AAABdXV2ampqioqLAwMArKyt4eHg+Pj7GxsbW1tbu7u77+/u8vLxLS0uvr69tbW2CgoLQ0NDd3d3l5eVXV1c1NTWSkpKJiYkXFxf19fVoaGjMzMyqqqq0tLQbGxsiIiJTU1NBQUEwMDAMDAwmJiaFhYVHR0dra2t0dHR8MpskAAAGEklEQVR4nO2c65aqOBCFEy4qQbyBgjfU1u4Z3/8Fh4goKjYIoULP2t+Ps1r7dKU2BblUJTAGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgFKE/Tsz3Q42ZcrLmOh2sRmzUoGc27qdbMRBShjNE4wF54P1epD8axjJl4bR6xmXXy90O9kE9xIk//KzxfmGMZ/zHWN9bjHGf+SnhECzl02wLgqiMGAzMwkccwOWfO6zIWfM4FMmLr8PdbvZgOX1UZsx86IstliU/CDYijn8ppDrdrM+gj8odNiPkfY9LIliTuFGt6O16T8qZCzqM3aRxtgxp/DvDhj8QeFVRySl2rITuin8s7ep96jQZmI63bBN8klwl21zCse6Xa3J6KbQlwovd+2csYnsgUaMzafX0SIZInW7Wg+3wnwm408OiavwA4XRSre71VkJ25rKKdrHHI2pZYtuSw2sQw1lzxxMX7eQd/TLva/IXLeUYsqXgtVZ6xZThKNQIOeebjkFvPP1tNztv3tFfO93y9O7P+tejyMfwq09E77ruqthLRPDVfK3vhD2mKdz107hKr2zNh0M4oTLiZgyDLma7BQBz5IV6uy5Cu01Z50M1KoNnpUabIi85EKpRbnq6NJ0PHls/lFsct6pYV9ecNW5FtGpICbXu6fc6IBzQ7nRmohWZlmO4u65CTJb0YLZXWfWGDKE2xbsxp0J4lc7IbzM5VXOk2ojk9jtVB5M5aNsRYIsS5h2dYvWZsky858Os5Nri18kd21wX8PFLF0G/NtSU3JFJqvg9r1JiiHycG/uJ/nYa/FWkjMJmSw2701S5I5z6/B+enmPrbX1lU6W8hmgeovrj8i1lqzD97zNqoOXXr+INrvxnVNoyzGrzcqRNO/ZOYWnFhvLyD32/GsgL7JIkzNKW7mmbKT9r2OuxVhpK2+Ic0Hkbzgtn/Nrx+NxcSf59JJ3e5t2y7VCVYYTYmPb8Tg065QnPmcQhuPYtjeCfvj3yr1TgkOuLINIoL4q+JZMIUn/UgCZQF1BtAgVtrH+LIdQoJ4gUoaQy51+5JAK1BFEs9wppdAHkVggfRA/2SyjBpNW4JBcIHUQo3KHlEO6vW+lQWALpZFf0BFC2gS4FoGUO95tzoXrmaNypxQxMr3A53s6hf2sshfY5rxlcQfTvmaB14R7F5YPg5PrmId2xIV2XpNFeH7oNa/gl/v7Mc9ZmQ2PqAQGBXtdRLnHH/JybG9IVzC1i+YXKvdeSgq2RC3JpjVe4RaCm2tmE24XqqA+sSZTGBcuZa5z8aZbo4zUTNEjtyXbzTcuTGBmM7n6XsiwZVP6ooFhRrbBZlycGLpefbkxdLiJzv3QtLaxl5339bw4HmfEsed52ddbKwyna8OcyWsT/XInjMlq3nEyydi+XmTnMYhDYW+t6Xk02r/dCLxcLkbGObJiJwtOFsLX7Tnu+EBX1U+rTzvzub2rdz8NTGcL66evfXN/+ZrqGN+9vjZ9eCCzfrB+mTYL4cNxPec+EFEVMPIVRG7Et/s1O7gdJXeo43/UK7iBY2/cWwhvSlbxOt8YlcLncwcL67pyy75IgijG4Ty9s07L5fsd+ZmFiRUHudxIas63Bk//T5fCS9xk41kI7oPZ0PVlrdGLx1srP7Bb1laWBG0hglyXlf297I43YcFloXoO35wdmVg3n2o+iTdT5rm4Cc0Kc9TbZ18+taV6iYba8z+f8P9XSDXib7QppIohFLYHVV9a5aUz7UA14qvPyVSFKtmmTyHVydKg3JWWoNpXU+VlCYb1Ketyo2QFtgoK6+RuK5SVqRRWKADXSRlVuHBkRdJyV+rUULqksKdLIdkOvvIScJ3JR4VBiKy8Vl5pOn2+ChC7UquEp6CM8svdBoRnSrXsxaDdbqJj4ka8x9SN+s+cDXWcX6xH9MeevwdPqHyvXLR4Mv5N/5qM14mNyp5u8mKd/h0SUNgMKKQACpsBhRRAYTOgkIQXH1TO2l5LiQqNV+Xl9KHKqfFLRkPHuScWOA8ofhXAo/HuvE8JAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdJ7/ACfbUtl3HqfQAAAAAElFTkSuQmCC',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,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',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,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',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,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',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,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',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,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',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,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',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,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',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,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',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,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',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,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',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,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',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,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',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAflBMVEX///8AAABdXV2ampqioqLAwMArKyt4eHg+Pj7GxsbW1tbu7u77+/u8vLxLS0uvr69tbW2CgoLQ0NDd3d3l5eVXV1c1NTWSkpKJiYkXFxf19fVoaGjMzMyqqqq0tLQbGxsiIiJTU1NBQUEwMDAMDAwmJiaFhYVHR0dra2t0dHR8MpskAAAGEklEQVR4nO2c65aqOBCFEy4qQbyBgjfU1u4Z3/8Fh4goKjYIoULP2t+Ps1r7dKU2BblUJTAGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgFKE/Tsz3Q42ZcrLmOh2sRmzUoGc27qdbMRBShjNE4wF54P1epD8axjJl4bR6xmXXy90O9kE9xIk//KzxfmGMZ/zHWN9bjHGf+SnhECzl02wLgqiMGAzMwkccwOWfO6zIWfM4FMmLr8PdbvZgOX1UZsx86IstliU/CDYijn8ppDrdrM+gj8odNiPkfY9LIliTuFGt6O16T8qZCzqM3aRxtgxp/DvDhj8QeFVRySl2rITuin8s7ep96jQZmI63bBN8klwl21zCse6Xa3J6KbQlwovd+2csYnsgUaMzafX0SIZInW7Wg+3wnwm408OiavwA4XRSre71VkJ25rKKdrHHI2pZYtuSw2sQw1lzxxMX7eQd/TLva/IXLeUYsqXgtVZ6xZThKNQIOeebjkFvPP1tNztv3tFfO93y9O7P+tejyMfwq09E77ruqthLRPDVfK3vhD2mKdz107hKr2zNh0M4oTLiZgyDLma7BQBz5IV6uy5Cu01Z50M1KoNnpUabIi85EKpRbnq6NJ0PHls/lFsct6pYV9ecNW5FtGpICbXu6fc6IBzQ7nRmohWZlmO4u65CTJb0YLZXWfWGDKE2xbsxp0J4lc7IbzM5VXOk2ojk9jtVB5M5aNsRYIsS5h2dYvWZsky858Os5Nri18kd21wX8PFLF0G/NtSU3JFJqvg9r1JiiHycG/uJ/nYa/FWkjMJmSw2701S5I5z6/B+enmPrbX1lU6W8hmgeovrj8i1lqzD97zNqoOXXr+INrvxnVNoyzGrzcqRNO/ZOYWnFhvLyD32/GsgL7JIkzNKW7mmbKT9r2OuxVhpK2+Ic0Hkbzgtn/Nrx+NxcSf59JJ3e5t2y7VCVYYTYmPb8Tg065QnPmcQhuPYtjeCfvj3yr1TgkOuLINIoL4q+JZMIUn/UgCZQF1BtAgVtrH+LIdQoJ4gUoaQy51+5JAK1BFEs9wppdAHkVggfRA/2SyjBpNW4JBcIHUQo3KHlEO6vW+lQWALpZFf0BFC2gS4FoGUO95tzoXrmaNypxQxMr3A53s6hf2sshfY5rxlcQfTvmaB14R7F5YPg5PrmId2xIV2XpNFeH7oNa/gl/v7Mc9ZmQ2PqAQGBXtdRLnHH/JybG9IVzC1i+YXKvdeSgq2RC3JpjVe4RaCm2tmE24XqqA+sSZTGBcuZa5z8aZbo4zUTNEjtyXbzTcuTGBmM7n6XsiwZVP6ooFhRrbBZlycGLpefbkxdLiJzv3QtLaxl5339bw4HmfEsed52ddbKwyna8OcyWsT/XInjMlq3nEyydi+XmTnMYhDYW+t6Xk02r/dCLxcLkbGObJiJwtOFsLX7Tnu+EBX1U+rTzvzub2rdz8NTGcL66evfXN/+ZrqGN+9vjZ9eCCzfrB+mTYL4cNxPec+EFEVMPIVRG7Et/s1O7gdJXeo43/UK7iBY2/cWwhvSlbxOt8YlcLncwcL67pyy75IgijG4Ty9s07L5fsd+ZmFiRUHudxIas63Bk//T5fCS9xk41kI7oPZ0PVlrdGLx1srP7Bb1laWBG0hglyXlf297I43YcFloXoO35wdmVg3n2o+iTdT5rm4Cc0Kc9TbZ18+taV6iYba8z+f8P9XSDXib7QppIohFLYHVV9a5aUz7UA14qvPyVSFKtmmTyHVydKg3JWWoNpXU+VlCYb1Ketyo2QFtgoK6+RuK5SVqRRWKADXSRlVuHBkRdJyV+rUULqksKdLIdkOvvIScJ3JR4VBiKy8Vl5pOn2+ChC7UquEp6CM8svdBoRnSrXsxaDdbqJj4ka8x9SN+s+cDXWcX6xH9MeevwdPqHyvXLR4Mv5N/5qM14mNyp5u8mKd/h0SUNgMKKQACpsBhRRAYTOgkIQXH1TO2l5LiQqNV+Xl9KHKqfFLRkPHuScWOA8ofhXAo/HuvE8JAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdJ7/ACfbUtl3HqfQAAAAAElFTkSuQmCC',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(width:30, height: 30,),
            ],
          ),
        ],
      ),
    );
  }
}