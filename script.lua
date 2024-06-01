Num1 = get("num1")
Operator = get("operator")
Num2 = get("num2")
Result = get("result")

function Calculate()
    local result = 0 / 0
    local num1 = tonumber(Num1.get_content())
    local num2 = tonumber(Num2.get_content())
    local op = Operator.get_content()

    if op == "+" then
        result = num1 + num2
    elseif op == "-" then
        result = num1 - num2
    elseif op == "*" then
        result = num1 * num2
    elseif op == "/" then
        result = num1 / num2
    end

    Result.set_content(result)
end

Num1.on_input(Calculate)
Operator.on_input(Calculate)
Num2.on_input(Calculate)
