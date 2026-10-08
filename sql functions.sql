CREATE DEFINER=`root`@`localhost` FUNCTION `Adult_or_Minor`(age int) RETURNS varchar(30) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
if age >= 18 then
return 'adult';
else
RETURN 'minor';
end if;
END

CREATE DEFINER=`root`@`localhost` FUNCTION `Even_or_Odd`(num int) RETURNS varchar(30) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
if num % 2 = 0 then
return 'even';
else
return 'odd';
end if;
END

CREATE DEFINER=`root`@`localhost` FUNCTION `Number_Comparison`(num int) RETURNS varchar(30) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
if num > 0 and num % 2 = 0 then
return 'positive even';
elseif num > 0 and num % 2 != 0 then
return 'positive odd';
elseif num < 0 then 
return 'negative';
else
RETURN 'zero';
end if;
END

CREATE DEFINER=`root`@`localhost` FUNCTION `Pass_or_Fail`(marks int) RETURNS varchar(30) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
if marks >= 35 then
return 'pass';
else
RETURN 'fail';
end if;
END

CREATE DEFINER=`root`@`localhost` FUNCTION `pn`(num int) RETURNS varchar(30) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
if num > 0 then
return 'positive';
elseif num = 0 then 
return 'zero';
else
RETURN 'negative';
end if;
END

