function botaoReset() {
  if (confirm("Deseja resetar?")) {
    document.location.reload(true);
	return true;
  } else {
	  
    return false;
  }
}
//perguntas programadas:
//pergunta 1
function btn1(){
	var perg1 = document.getElementById("divpergunta1"); 
	var perg2 = document.getElementById("divpergunta2").style.display = "block";//aparece pergunta2
	perg1.classList.add("hide"); //esconde pergunta1 
}
function btn2(){
	var perg1 = document.getElementById("divpergunta1");
	var perg2 = document.getElementById("divpergunta2").style.display = "block";
	perg1.classList.add("hide");
}
function btn3(){
	var perg1 = document.getElementById("divpergunta1");
	var esco3 = document.getElementById("divescolha3").style.display = "block";
	perg1.classList.add("hide"); 
}

//pergunta1 escolha 3
function btn1e(){
	var perg1 = document.getElementById("divpergunta1").style.display = "none";
	var esco3 = document.getElementById("divescolha3").style.display = "none";
	var opcao3 = document.getElementById("opcao3").style.display = "block";
}
function btn2e(){
	var perg1 = document.getElementById("divpergunta1").style.display = "none";
	var esco3 = document.getElementById("divescolha3").style.display = "none";
	var opcao3 = document.getElementById("opcao3").style.display = "block";
}
function btn3e(){
	var perg1 = document.getElementById("divpergunta1").style.display = "none";
	var perg2 = document.getElementById("divpergunta2").style.display = "block";
    var esco3 = document.getElementById("divescolha3");
	esco3.classList.add("hide");
}

//pergunta2 e pergunta3  

function enviarNome(){
	var nomeAluno = document.getElementById("nomeAluno").value;//variável recebe nome do aluno
	
	if(isNaN(nomeAluno)){ //verifica se a variavel é uma string. caso não seja o programa obriga escrever algo.
		if (confirm('Smile: "Seu nome esta correto?"')){ // confirmar se nome esta correto.
			var perg2 = document.getElementById("divpergunta2");
			var perg3 = document.getElementById("divpergunta3").style.display = "block";
			perg2.classList.add("hide"); //esconde pergunta 2 e aparece pergunta 3
			var pergunta3 = document.getElementById("pergunta3");
			pergunta3.textContent = "3)Uau! "+nomeAluno+" é um nome bem bonito!Queria saber, quantos anos você tem "+nomeAluno+"?";
			return true;
		} else {
			return false;
		}
	} else {
		alert("Digite um nome.")
	}
	

}

function enviarIdade(){
	var idadeAluno = document.getElementById("idadeAluno");
	if (confirm('Smile: "Essa é sua idade?"')){ //confirma se a idade do aluno esta correta.
		var perg3 = document.getElementById("divpergunta3");
		var perg4 = document.getElementById("divpergunta4").style.display = "block";
		perg3.classList.add("hide");
		
		return true;
	} else {
		
		return false;
	}
}


//pergunta 4 e pergunta5
function btn1p4(){
	var perg4 = document.getElementById("divpergunta4");
	var caso1 = document.getElementById("caso1");
	caso1.textContent = "Que coincidência! Eu também!"
	var perg5 = document.getElementById("divpergunta5").style.display = "block";
	perg4.classList.add("hide");
}
function btn2p4(){
	var sumirbtn2 = document.getElementById("sumirbtn2").style.display = "none";
	var perg4Escolha2 = document.getElementById("perg4Escolha2").style.display = "block";
}
function btn3p4(){
	var sumirbtn2 = document.getElementById("sumirbtn2").style.display = "none";
	var perg4Escolha3 = document.getElementById("perg4Escolha3").style.display = "block";
}

//programa3 botoes da escolha2 da pergunta 4.
function btn1p4e2(){
	var perg4Escolha2 = document.getElementById("perg4Escolha2");
	var perg5 = document.getElementById("divpergunta5").style.display = "block";
	perg4Escolha2.classList.add("hide");
}
function btn2p4e2() {
	var perg4Escolha2 = document.getElementById("perg4Escolha2");
	var perg5 = document.getElementById("divpergunta5").style.display = "block";
	perg4Escolha2.classList.add("hide");
}
function btn3p4e2(){
	var perg4Escolha2 = document.getElementById("perg4Escolha2");
	var perg5 = document.getElementById("divpergunta5").style.display = "block";
	perg4Escolha2.classList.add("hide");
}

//programa 3 botoes da escolha3 pergunta 4.
function btn1p4e3(){
	var perg4Escolha3 = document.getElementById("perg4Escolha3");
	var perg5 = document.getElementById("divpergunta5").style.display = "block";
	perg4Escolha3.classList.add("hide");
}
function btn2p4e3(){
	var perg4Escolha3 = document.getElementById("perg4Escolha3");
	var perg5 = document.getElementById("divpergunta5").style.display = "block";
	perg4Escolha3.classList.add("hide");
}
function btn3p4e3(){
	var perg4Escolha3 = document.getElementById("perg4Escolha3");
	var perg5 = document.getElementById("divpergunta5").style.display = "block";
	perg4Escolha3.classList.add("hide");
}

//pergunta5
function btn1p5(){
	var perg5 = document.getElementById("divpergunta5");
	var perg6 = document.getElementById("divpergunta6").style.display = "block";
	perg5.classList.add("hide");
}
function btn2p5(){
	var perg5 = document.getElementById("divpergunta5");
	var perg6 = document.getElementById("divpergunta6").style.display = "block";
	perg5.classList.add("hide");
}
function btn3p5(){
	var perg5 = document.getElementById("divpergunta5");
	var perg5Escolha3 = document.getElementById("perg5Escolha3").style.display = "block";
	perg5.classList.add("hide");
}

//programa escolha 3 pergunta 5
function btn1p5e3(){
	var perg5Escolha3 = document.getElementById("perg5Escolha3");
	var perg6 = document.getElementById("divpergunta6").style.display = "block";
	perg5Escolha3.classList.add("hide");
}
function btn2p5e3(){
	var perg5Escolha3 = document.getElementById("perg5Escolha3");
	var perg6 = document.getElementById("divpergunta6").style.display = "block";
	perg5Escolha3.classList.add("hide");
}
function btnEnviar(){
	var perg5Escolha3 = document.getElementById("perg5Escolha3");
	var perg6 = document.getElementById("divpergunta6").style.display = "block";
	perg5Escolha3.classList.add("hide");
}

//pergunta 6:
function btn1p6(){
	var perg6= document.getElementById("divpergunta6");
	var perg7 = document.getElementById("divpergunta7").style.display = "block";
	divpergunta6.classList.add("hide");
}
function btn2p6(){
	var perg6= document.getElementById("divpergunta6");
	var perg7 = document.getElementById("divpergunta7").style.display = "block";
	divpergunta6.classList.add("hide");
}
function btn3p6(){
	var perg6= document.getElementById("divpergunta6");
	var perg7 = document.getElementById("divpergunta7").style.display = "block";
	divpergunta6.classList.add("hide");
}

//pergunta 7:
function btn1p7(){
	var perg7= document.getElementById("divpergunta7");
	var perg8 = document.getElementById("divpergunta8").style.display = "block";
	divpergunta7.classList.add("hide");
}
function btn2p7(){
	var perg7= document.getElementById("divpergunta7");
	var perg8 = document.getElementById("divpergunta8").style.display = "block";
	divpergunta7.classList.add("hide");
}
function btn3p7(){
	var perg7= document.getElementById("divpergunta7");
	var perg8 = document.getElementById("divpergunta8").style.display = "block";
	divpergunta7.classList.add("hide");
}
// pergunta 8:
function btn1p8(){
	var perg8= document.getElementById("divpergunta8");
	var perg9 = document.getElementById("divpergunta9").style.display = "block";
	divpergunta8.classList.add("hide");
}
function btn2p8(){
	var perg8= document.getElementById("divpergunta8");
	var perg9 = document.getElementById("divpergunta9").style.display = "block";
	divpergunta8.classList.add("hide");
}
function btn3p8(){
	var perg8= document.getElementById("divpergunta8");
	var perg9 = document.getElementById("divpergunta9").style.display = "block";
	divpergunta8.classList.add("hide");
}

//pergunta9:
function btn1p9(){
	var perg9= document.getElementById("divpergunta9");
	var perg10 = document.getElementById("divpergunta10").style.display = "block";
	divpergunta9.classList.add("hide");
}
function btn2p9(){
	var perg9= document.getElementById("divpergunta9");
	var perg10 = document.getElementById("divpergunta10").style.display = "block";
	divpergunta9.classList.add("hide");
}
function btn3p9(){
	var perg9= document.getElementById("divpergunta9");
	var esco3p9 = document.getElementById("escolha3perg9").style.display = "block";
	divpergunta9.classList.add("hide");
}

//programa escolha3 da pergunta9:
function btn1p9e3(){
	var esco3p9 = document.getElementById("escolha3perg9");
	var perg10 = document.getElementById("divpergunta10").style.display = "block";
	escolha3perg9.classList.add("hide");
}
function btn2p9e3(){
	var esco3p9 = document.getElementById("escolha3perg9");
	var perg10 = document.getElementById("divpergunta10").style.display = "block";
	escolha3perg9.classList.add("hide");
}
function btn3p9e3(){
	var esco3p9 = document.getElementById("escolha3perg9");
	var perg10 = document.getElementById("divpergunta10").style.display = "block";
	escolha3perg9.classList.add("hide");
}

function btnEnviarP10(){
	var perg10 = document.getElementById("divpergunta10");
	var msgFinal = document.getElementById("mensagemFinal").style.display = "block";
	perg10.classList.add("hide");
}

