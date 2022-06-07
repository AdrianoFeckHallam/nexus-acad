const quizData = [
	{
		question: '1 - Na orientação a objetos, a sobrecarga é utilizada por meio do conceito de:',
		a: 'Encapsulamento',
		b: 'Herança',
		c: 'Polimorfismo',
		d: 'Abstração',
		correct: 'c',
		
	},
	{
		question: '2 - No mundo orientado a objetos, o polimorfismo permite que ...',
		a: 'Referências de tipos de classes mais genéricas referenciam objetos mais específicos.',
		b: 'Referências usem outras referências mais concretas ou genéricas.',
		c: 'Objetos mais concretos referenciem tipos do objetos mais genéricos.',
		d: 'Referências de tipos de classes mais específicos.',
		correct: 'a',
	},
	{
		question: '3 - Para que seja permitido a sobrecarga, os nomes dos métodos devem ser _____ e as assinaturas _____',
		a: 'diferentes..iguais',
		b: 'iguais..diferentes',
		c: 'iguais..iguais',
		d: 'diferentes..diferentes',
		correct: 'b',
	},
	{
		question: '4 - Wich language runs in a web browser?',
		a: 'Java',
		b: 'C',
		c: 'Python',
		d: 'JavaScript',
		correct: 'd',
	},
];

const quiz= document.getElementById('quiz');
const answerEls = document.querySelectorAll('.answer');
const questionEl = document.getElementById('question');
const a_text = document.getElementById('a_text');
const b_text = document.getElementById('b_text');
const c_text = document.getElementById('c_text');
const d_text = document.getElementById('d_text');
const submitBtn = document.getElementById('submit');

let currentQuiz = 0;
let score = 0;

loadQuiz();

function loadQuiz(){
	deselectAnswer();
	
	const currentQuizData = quizData[currentQuiz];
	
	questionEl.innerText = currentQuizData.question;
	a_text.innerText = currentQuizData.a;
	b_text.innerText = currentQuizData.b;
	c_text.innerText = currentQuizData.c;
	d_text.innerText = currentQuizData.d;
}

function deselectAnswer(){
	answerEls.forEach(answerEl => answerEl.checked = false);
}

function getSelected(){
	let answer;
	answerEls.forEach(answerEl => {
		if(answerEl.checked){
			answer = answerEl.id;
		}
	})
	return answer
}

submitBtn.addEventListener('click', () =>{
	const answer = getSelected();
	if(answer){
		if (answer == quizData[currentQuiz].correct){
			score++;
		}
		
		currentQuiz++;
		
		if(currentQuiz < quizData.length){
			loadQuiz();
		}else{
			if(score > 2){
				quiz.innerHTML = '<br><h2>&nbsp;Você acertou '+score+'/'+quizData.length+' das questões</h2><br><button onclick="location.replace(\'cursoJava2.html\');)">Próxima Aula</button><button onclick="location.reload()">Reiniciar</button>';	
			}else{
				quiz.innerHTML = '<br><h2>&nbsp;Você acertou '+score+'/'+quizData.length+' das questões</h2><br><button onclick="location.replace(\'cursoJava.html\');">Reassistir Aula</button><button onclick="location.reload()">Reiniciar</button>';
			}
		}
	}
})