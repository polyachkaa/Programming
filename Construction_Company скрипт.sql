-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 03 2024 г., 19:24
-- Версия сервера: 5.7.39
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Construction_Company`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Crew`
--

CREATE TABLE `Crew` (
  `ID` int(11) NOT NULL,
  `Number_crew` int(11) DEFAULT NULL,
  `ID_project` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Crew`
--

INSERT INTO `Crew` (`ID`, `Number_crew`, `ID_project`) VALUES
(1, 101, 1),
(2, 102, 2),
(3, 103, 3),
(4, 104, 1),
(5, 105, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Customer`
--

CREATE TABLE `Customer` (
  `ID` int(11) NOT NULL,
  `Name_customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Contact_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ID_project` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Customer`
--

INSERT INTO `Customer` (`ID`, `Name_customer`, `Contact_info`, `ID_project`) VALUES
(1, 'CompanyA', 'ContactA', 1),
(2, 'CompanyB', 'ContactB', 2),
(3, 'CompanyC', 'ContactC', 3),
(4, 'CompanyD', 'ContactD', 1),
(5, 'CompanyE', 'ContactE', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Department`
--

CREATE TABLE `Department` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Department`
--

INSERT INTO `Department` (`ID`, `Name`) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'Operations'),
(6, 'Sales');

-- --------------------------------------------------------

--
-- Структура таблицы `Employee`
--

CREATE TABLE `Employee` (
  `ID` int(11) NOT NULL,
  `Surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Patronymic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Passport_Details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `ID_Pos_ition` int(11) DEFAULT NULL,
  `ID_Crew` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Employee`
--

INSERT INTO `Employee` (`ID`, `Surname`, `FirstName`, `Patronymic`, `Passport_Details`, `Salary`, `ID_Pos_ition`, `ID_Crew`) VALUES
(1, 'Smith', 'John', 'A.', 'AB123456', '50000.00', 1, 1),
(2, 'Johnson', 'Alice', 'B.', 'CD789012', '60000.00', 2, 2),
(3, 'Williams', 'Bob', 'C.', 'EF345678', '55000.00', 3, 3),
(4, 'Miller', 'Emma', 'D.', 'GH012345', '70000.00', 1, 2),
(5, 'Davis', 'Chris', 'E.', 'IJ456789', '80000.00', 2, 3),
(6, 'Wilson', 'Eva', 'F.', 'KL901234', '75000.00', 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Equipment`
--

CREATE TABLE `Equipment` (
  `ID` int(11) NOT NULL,
  `Name_equipment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cond_ition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date_of_purchase` date DEFAULT NULL,
  `Using_date` date DEFAULT NULL,
  `Using_duration` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Rent_Cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Equipment`
--

INSERT INTO `Equipment` (`ID`, `Name_equipment`, `Cond_ition`, `Date_of_purchase`, `Using_date`, `Using_duration`, `Amount`, `Rent_Cost`) VALUES
(1, 'Laptop', 'Good', '2022-01-01', '2023-01-01', 12, 10, '100.00'),
(2, 'Printer', 'Excellent', '2022-02-01', '2023-02-01', 6, 5, '50.00'),
(3, 'Desktop', 'Good', '2022-03-15', '2023-03-15', 24, 15, '150.00'),
(4, 'Scanner', 'Excellent', '2022-04-15', '2023-04-15', 12, 8, '80.00');

-- --------------------------------------------------------

--
-- Структура таблицы `Machine_Technology`
--

CREATE TABLE `Machine_Technology` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cond_ition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date_of_purchase` date DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Machine_Technology`
--

INSERT INTO `Machine_Technology` (`ID`, `Name`, `Type`, `Cond_ition`, `Date_of_purchase`, `Cost`) VALUES
(1, 'MachineA', 'TypeA', 'Good', '2022-03-01', '10000.00'),
(2, 'MachineB', 'TypeB', 'Excellent', '2022-04-01', '15000.00'),
(3, 'MachineC', 'TypeC', 'Excellent', '2022-05-01', '20000.00'),
(4, 'MachineD', 'TypeD', 'Good', '2022-06-01', '12000.00');

-- --------------------------------------------------------

--
-- Структура таблицы `Material`
--

CREATE TABLE `Material` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Units` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Material`
--

INSERT INTO `Material` (`ID`, `Name`, `Units`, `Amount`, `Price`) VALUES
(1, 'Wood', 'kg', 1000, '2.50'),
(2, 'Steel', 'kg', 500, '5.00'),
(3, 'Plastic', 'kg', 800, '1.50'),
(4, 'Aluminum', 'kg', 300, '4.00');

-- --------------------------------------------------------

--
-- Структура таблицы `Payment`
--

CREATE TABLE `Payment` (
  `ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Sum` decimal(10,2) DEFAULT NULL,
  `ID_project` int(11) DEFAULT NULL,
  `ID_employee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Payment`
--

INSERT INTO `Payment` (`ID`, `Date`, `Sum`, `ID_project`, `ID_employee`) VALUES
(1, '2023-03-01', '5000.00', 1, 1),
(2, '2023-03-15', '6000.00', 2, 2),
(3, '2023-04-01', '7500.00', 3, 3),
(4, '2023-04-15', '9000.00', 1, 1),
(5, '2023-05-01', '6000.00', 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Pos_ition`
--

CREATE TABLE `Pos_ition` (
  `ID` int(11) NOT NULL,
  `Name_pos_ition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ID_Department` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Pos_ition`
--

INSERT INTO `Pos_ition` (`ID`, `Name_pos_ition`, `ID_Department`) VALUES
(1, 'Manager', 1),
(2, 'Developer', 2),
(3, 'Marketing Specialist', 3),
(4, 'Accountant', 4),
(5, 'Supervisor', 5),
(6, 'Sales Representative', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `Project`
--

CREATE TABLE `Project` (
  `ID` int(11) NOT NULL,
  `Name_project` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Start_date` date DEFAULT NULL,
  `End_date` date DEFAULT NULL,
  `Contract` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ID_crew` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Project`
--

INSERT INTO `Project` (`ID`, `Name_project`, `Start_date`, `End_date`, `Contract`, `ID_crew`) VALUES
(1, 'ProjectA', '2023-01-01', '2023-12-31', 'ContractA', 1),
(2, 'ProjectB', '2023-02-01', '2023-11-30', 'ContractB', 2),
(3, 'ProjectC', '2023-03-01', '2023-12-31', 'ContractC', 2),
(4, 'ProjectD', '2023-05-01', '2023-11-30', 'ContractD', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `Service`
--

CREATE TABLE `Service` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Service`
--

INSERT INTO `Service` (`ID`, `Name`, `Description`, `Cost`) VALUES
(1, 'Consulting', 'Advisory services', '200.00'),
(2, 'Development', 'Software development', '500.00'),
(3, 'Training', 'Employee training services', '300.00'),
(4, 'Maintenance', 'Equipment maintenance', '150.00');

-- --------------------------------------------------------

--
-- Структура таблицы `Used_Equipment`
--

CREATE TABLE `Used_Equipment` (
  `ID` int(11) NOT NULL,
  `ID_project` int(11) DEFAULT NULL,
  `ID_equipment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Used_Equipment`
--

INSERT INTO `Used_Equipment` (`ID`, `ID_project`, `ID_equipment`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 1, 2),
(5, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Used_Machine_Technology`
--

CREATE TABLE `Used_Machine_Technology` (
  `ID` int(11) NOT NULL,
  `ID_project` int(11) DEFAULT NULL,
  `ID_machine_technology` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Used_Machine_Technology`
--

INSERT INTO `Used_Machine_Technology` (`ID`, `ID_project`, `ID_machine_technology`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 1, 1),
(5, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Used_Material`
--

CREATE TABLE `Used_Material` (
  `ID` int(11) NOT NULL,
  `ID_project` int(11) DEFAULT NULL,
  `ID_material` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Used_Material`
--

INSERT INTO `Used_Material` (`ID`, `ID_project`, `ID_material`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 1, 1),
(5, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Used_Service`
--

CREATE TABLE `Used_Service` (
  `ID` int(11) NOT NULL,
  `ID_project` int(11) DEFAULT NULL,
  `ID_service` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Used_Service`
--

INSERT INTO `Used_Service` (`ID`, `ID_project`, `ID_service`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 1, 1),
(5, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Warehouse`
--

CREATE TABLE `Warehouse` (
  `ID` int(11) NOT NULL,
  `Number_warehouse` int(11) DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL,
  `ID_Material` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Warehouse`
--

INSERT INTO `Warehouse` (`ID`, `Number_warehouse`, `Address`, `Capacity`, `ID_Material`) VALUES
(1, 1, 'WarehouseA', 2000, 1),
(2, 2, 'WarehouseB', 1000, 2),
(3, 3, 'WarehouseC', 1500, 1),
(4, 1, 'WarehouseD', 800, 2),
(5, 2, 'WarehouseE', 1200, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Crew`
--
ALTER TABLE `Crew`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_crew_proj` (`ID_project`);

--
-- Индексы таблицы `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_cust_proj` (`ID_project`);

--
-- Индексы таблицы `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_emp_pos` (`ID_Pos_ition`);

--
-- Индексы таблицы `Equipment`
--
ALTER TABLE `Equipment`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `Machine_Technology`
--
ALTER TABLE `Machine_Technology`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `Material`
--
ALTER TABLE `Material`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_pay_emp` (`ID_employee`),
  ADD KEY `fk_pay_proj` (`ID_project`);

--
-- Индексы таблицы `Pos_ition`
--
ALTER TABLE `Pos_ition`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_pos_dept` (`ID_Department`);

--
-- Индексы таблицы `Project`
--
ALTER TABLE `Project`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `Service`
--
ALTER TABLE `Service`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `Used_Equipment`
--
ALTER TABLE `Used_Equipment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_usedequip_equip` (`ID_equipment`),
  ADD KEY `fk_usedequip_proj` (`ID_project`);

--
-- Индексы таблицы `Used_Machine_Technology`
--
ALTER TABLE `Used_Machine_Technology`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_usedmachtech_machtech` (`ID_machine_technology`),
  ADD KEY `fk_usedmachtech_proj` (`ID_project`);

--
-- Индексы таблицы `Used_Material`
--
ALTER TABLE `Used_Material`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_usedmat_material` (`ID_material`),
  ADD KEY `fk_usedmat_proj` (`ID_project`);

--
-- Индексы таблицы `Used_Service`
--
ALTER TABLE `Used_Service`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_usedserv_service` (`ID_service`),
  ADD KEY `fk_usedserv_proj` (`ID_project`);

--
-- Индексы таблицы `Warehouse`
--
ALTER TABLE `Warehouse`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_warehouse_material` (`ID_Material`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Crew`
--
ALTER TABLE `Crew`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Customer`
--
ALTER TABLE `Customer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Department`
--
ALTER TABLE `Department`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Employee`
--
ALTER TABLE `Employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Equipment`
--
ALTER TABLE `Equipment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Machine_Technology`
--
ALTER TABLE `Machine_Technology`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Material`
--
ALTER TABLE `Material`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Payment`
--
ALTER TABLE `Payment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Pos_ition`
--
ALTER TABLE `Pos_ition`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Project`
--
ALTER TABLE `Project`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Service`
--
ALTER TABLE `Service`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Used_Equipment`
--
ALTER TABLE `Used_Equipment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Used_Machine_Technology`
--
ALTER TABLE `Used_Machine_Technology`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Used_Material`
--
ALTER TABLE `Used_Material`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Used_Service`
--
ALTER TABLE `Used_Service`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Warehouse`
--
ALTER TABLE `Warehouse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Crew`
--
ALTER TABLE `Crew`
  ADD CONSTRAINT `fk_crew_proj` FOREIGN KEY (`ID_project`) REFERENCES `Project` (`ID`);

--
-- Ограничения внешнего ключа таблицы `Customer`
--
ALTER TABLE `Customer`
  ADD CONSTRAINT `fk_cust_proj` FOREIGN KEY (`ID_project`) REFERENCES `Project` (`ID`);

--
-- Ограничения внешнего ключа таблицы `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `FK_Pos_ition_Employee` FOREIGN KEY (`ID_Pos_ition`) REFERENCES `Pos_ition` (`ID`),
  ADD CONSTRAINT `fk_emp_pos` FOREIGN KEY (`ID_Pos_ition`) REFERENCES `Pos_ition` (`ID`);

--
-- Ограничения внешнего ключа таблицы `Payment`
--
ALTER TABLE `Payment`
  ADD CONSTRAINT `FK_Employee_Payment` FOREIGN KEY (`ID_employee`) REFERENCES `Employee` (`ID`),
  ADD CONSTRAINT `fk_pay_emp` FOREIGN KEY (`ID_employee`) REFERENCES `Employee` (`ID`),
  ADD CONSTRAINT `fk_pay_proj` FOREIGN KEY (`ID_project`) REFERENCES `Project` (`ID`);

--
-- Ограничения внешнего ключа таблицы `Pos_ition`
--
ALTER TABLE `Pos_ition`
  ADD CONSTRAINT `FK_Department_Pos_ition` FOREIGN KEY (`ID_Department`) REFERENCES `Department` (`ID`),
  ADD CONSTRAINT `fk_pos_dept` FOREIGN KEY (`ID_Department`) REFERENCES `Department` (`ID`);

--
-- Ограничения внешнего ключа таблицы `Used_Equipment`
--
ALTER TABLE `Used_Equipment`
  ADD CONSTRAINT `fk_usedequip_equip` FOREIGN KEY (`ID_equipment`) REFERENCES `Equipment` (`ID`),
  ADD CONSTRAINT `fk_usedequip_proj` FOREIGN KEY (`ID_project`) REFERENCES `Project` (`ID`);

--
-- Ограничения внешнего ключа таблицы `Used_Machine_Technology`
--
ALTER TABLE `Used_Machine_Technology`
  ADD CONSTRAINT `fk_usedmachtech_machtech` FOREIGN KEY (`ID_machine_technology`) REFERENCES `Machine_Technology` (`ID`),
  ADD CONSTRAINT `fk_usedmachtech_proj` FOREIGN KEY (`ID_project`) REFERENCES `Project` (`ID`);

--
-- Ограничения внешнего ключа таблицы `Used_Material`
--
ALTER TABLE `Used_Material`
  ADD CONSTRAINT `fk_usedmat_material` FOREIGN KEY (`ID_material`) REFERENCES `Material` (`ID`),
  ADD CONSTRAINT `fk_usedmat_proj` FOREIGN KEY (`ID_project`) REFERENCES `Project` (`ID`);

--
-- Ограничения внешнего ключа таблицы `Used_Service`
--
ALTER TABLE `Used_Service`
  ADD CONSTRAINT `fk_usedserv_proj` FOREIGN KEY (`ID_project`) REFERENCES `Project` (`ID`),
  ADD CONSTRAINT `fk_usedserv_service` FOREIGN KEY (`ID_service`) REFERENCES `Service` (`ID`);

--
-- Ограничения внешнего ключа таблицы `Warehouse`
--
ALTER TABLE `Warehouse`
  ADD CONSTRAINT `fk_warehouse_material` FOREIGN KEY (`ID_Material`) REFERENCES `Material` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
